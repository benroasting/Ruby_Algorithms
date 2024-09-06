# given an array of names, return response based on number of likes

def likes(names)

  more = names.length - 2;
  more_people = more.to_s
 if names.length === 0 
   return "no one likes this"
 elsif names.length === 1
   return names[0] << " likes this"
 elsif names.length === 2 
   return names[0] << " and " << names[1] << " like this"
 elsif names.length === 3 
   return names[0] << ", " << names[1] << " and " << names[2] << " like this"
 else 
 return names[0] << ", " << names[1] << " and " << more_people << " others like this"
 end
end

describe 'Basic tests' do
  it "Testing" do
    expect(likes([])).to  eq('no one likes this')
    expect(likes(['Peter'])).to eq('Peter likes this')
    expect(likes(['Jacob', 'Alex'])).to eq('Jacob and Alex like this')
    expect(likes(['Max', 'John', 'Mark'])).to eq('Max, John and Mark like this')
    expect(likes(['Alex', 'Jacob', 'Mark', 'Max'])).to eq('Alex, Jacob and 2 others like this')
  end
end
