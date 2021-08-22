def caesar_cipher(string, shift = 3) 
  result = ''
  #If the shift is negative, turn into positive, perform remainder, turn into negative again. Else, perform remainder.
  shift = shift < 0 ? (((shift * -1) % 26) * -1) : (shift % 26)
  string.each_char do |char|
    unless char.match(/[a-zA-Z]/) #If the char isn't an uppercase or lowercase letter, append to the string as is.
      result.concat(char)
    else 
      base = char.upcase == char ? 65 : 97 #If the character is upcase, make the base value (Lowest letter) 65 (A), else make it 97 (a)
      value = char.ord - base
      value += shift
      value -= 26 if value > 25 #Wraps the value if it goes over the alfabet characters
      value += 26 if value < 0 #Wraps if the value goes below alfabet characters
      value += base
      result.concat(value.chr)
    end
  end
  return result
end
