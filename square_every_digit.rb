# take a integer (1223), 
# convert to array
# map over array (squaring each integer of array)
# combining results back to integer

def square_digits
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end

# or 

def square_digits num
  num.digits.map { |d| d*d } .reverse.join.to_i
end
