def duplicate_encode(word)
  word.downcase.chars.map{ |x| word.downcase.count(x) > 1 ? letter = ')' : letter = '(' }.join
end

def duplicate_encode(word)
  word.downcase.chars.map do |char|
    word.downcase.count(char) > 1 ? ')' : '('
  end.join
end

def duplicate_encode(str)
  str.downcase!
  str.gsub(/./) { |char| str.count(char) == 1 ? "(" : ")" }
end

def duplicate_encode(word)
  word.downcase!
  word.chars.map do |c|
    if word.count(c) > 1
      ')'
    else
      '('
    end
  end.join
end

describe "Fixed tests" do
  it "should pass fixed tests" do
    Test.assert_equals(duplicate_encode("din"),"(((")
    Test.assert_equals(duplicate_encode("recede"),"()()()")
    Test.assert_equals(duplicate_encode("Success"),")())())","should ignore case")
    Test.assert_equals(duplicate_encode("(( @"),"))((")
  end
end
