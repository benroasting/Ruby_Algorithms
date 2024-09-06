
# given a list of numbers and strings, only return new array of numbers


def filter_list(l)
  new_list = []
  
  l.each do |element|
    if !element.instance_of?(String)
      new_list.push(element)
    end
  end
  
  new_list
end

# also could use

def filter_list(l)
  l.select{|i| i.is_a?(Integer)}
end

# or 

def filter_list(l)
  l.reject { |x| x.is_a? String }
end

def filter_list(l)
  l.grep(Numeric)
end


describe "Filter List" do
  it "Fixed Tests" do
    expect(filter_list([1,2,'a','b'])).to eq([1,2])
    expect(filter_list([1,'a','b',0,15])).to eq([1,0,15])
    expect(filter_list([1,2,'aasf','1','123',123])).to eq([1,2,123])
  end
end
