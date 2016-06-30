require('rspec')
require('anagram')

describe("String#anagram") do
  it("takes a word and compares it a list of words to determine whether or not they are anagrams") do
    expect(("cat").anagram(["tac", "act", "tca", "dog"])).to(eq({"tac" => true, "act" => true, "tca" => true, "dog" => false}))
  end
end
