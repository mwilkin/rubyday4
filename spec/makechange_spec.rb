require('rspec')
require('makechange')

describe('Fixnum#makechange') do
  it("takes a number and returns a string with the least amount of change possible") do
    expect((67).makechange()).to(eq([2, 1, 1, 2]))
  end

  it("takes a number and returns a string with the least amount of change possible") do
    expect((15).makechange()).to(eq([0, 1, 1, 0]))
  end
end
