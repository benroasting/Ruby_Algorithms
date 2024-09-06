def bubble_sort array
  n = array.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
      end
    end

    break if not swapped

  end

  array

end

bubble_array = [ 2, 99, 101, 3, 56, 123, 128848, 432, 204, 5 ]

puts bubble_sort (bubble_array)
