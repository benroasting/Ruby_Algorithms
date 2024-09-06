class Array 
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))
    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [ 2, 99, 101, 3, 56, 123, 128848, 432, 204, 5 ]

p arr.quicksort
