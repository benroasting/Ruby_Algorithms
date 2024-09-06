require 'prime'

# Test if number is prime
def isPrime(num)
  num.prime?
end

describe "isPrime" do
    
  it "Should return false for non-prime numbers." do
      Test.assert_equals(isPrime(4), false)
      Test.assert_equals(isPrime(100), false)
      Test.assert_equals(isPrime(999), false)
      Test.assert_equals(isPrime(958297), false)
      Test.assert_equals(isPrime(-7), false)
  end
  
  it "Should return true for prime numbers." do
      Test.assert_equals(isPrime(2), true)
      Test.assert_equals(isPrime(3), true)
      Test.assert_equals(isPrime(5), true)
      Test.assert_equals(isPrime(457), true)
      Test.assert_equals(isPrime(39229), true)
  end
end
