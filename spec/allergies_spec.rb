require('rspec')
require('allergies')

describe("Fixnum#allergies") do
  it("takes a number and determines the allergies a person has") do
    expect((13).allergies()).to(eq(["eggs", "shellfish", "strawberries"]))
  end

  it("takes a number and determines the allergies a person has") do
    expect((3).allergies()).to(eq(["eggs", "peanuts"]))
  end
end
