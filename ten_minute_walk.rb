# 'n', 's', 'e', 'w' all equal 1
# 10 minutes total

def is_valid_walk(walk)
  vertical = 0
  horizontal = 0
  
  walk.each do |direction|
    if direction == 'n'
      vertical = vertical + 1
    elsif direction == 's'
      vertical = vertical - 1
    elsif direction == 'e'
      horizontal = horizontal + 1
    elsif direction == 'w'
      horizontal = horizontal - 1
    end 
  end
  
  count = walk.length
  return vertical == 0 && horizontal == 0 && count <= 10

end


# or

def is_valid_walk(walk)
  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w') && walk.length <= 10 ? true : false
end


def isValidWalk(walk)
  return false unless walk.length == 10
  x, y = [0, 0]
  
  walk.each do |step|
    case step
      when "n" then y += 1
      when "s" then y -= 1
      when "e" then x += 1
      when "w" then x -= 1
    end
  end
  
  x == 0 && y == 0
end

describe "Sample tests" do
  it "Some examples" do
    expect(is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])).to eq(true)
    expect(is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])).to eq(false)
    expect(is_valid_walk(['w'])).to eq(false)
    expect(is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])).to eq(false)
  end
end
