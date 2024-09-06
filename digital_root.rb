#   less than 10 because then it is one digit

def digital_root(n)
  n < 10 ? n : digital_root(n.to_s.split("").map(&:to_i).reduce(:+))
end

def digital_root(n)
  n < 10 ? n : digital_root(n.digits.sum)
end

describe "Fixed tests" do
  it "should pass fixed tests" do
    Test.assert_equals(digital_root(16), 7)
    Test.assert_equals(digital_root(942), 6)
    Test.assert_equals(digital_root(132189), 6)
    Test.assert_equals(digital_root(493193), 2)
  end
end

