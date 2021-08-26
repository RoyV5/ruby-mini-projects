def bubble_sort(list)
  counter = 0
  (list.size - counter).times do
    list.each_with_index do |num, i|
      list[i+1] == nil ? next : next_num = list[i+1]
      if num >= next_num 
        list[i+1] = num
        list[i] = next_num
      end
    end
    counter += 1
    puts "Bubble sort range is now #{list.size - counter}"
  end
  return list
end

num_array = Array.new(20) {rand(1...100)}
puts(bubble_sort(num_array))
