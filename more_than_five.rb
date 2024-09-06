def greater_than_five array
  count = 0

  array.each do |i|
      if i > 5
        count += 1
      end 
  end

  count
end

b = [17, 7, 3, 6, 10, 1]

puts greater_than_five (b)
