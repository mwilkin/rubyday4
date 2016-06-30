require('rspec')
require('makechange')

describe('Fixnum#makechange') do
  it("takes a number and returns a string with the least amount of change possible") do
    expect((67).makechange([100, 100, 100, 100])).to(eq([2, 1, 1, 2]))
  end

  it("takes a number and returns a string with the least amount of change possible") do
    expect((15).makechange([100, 100, 100, 100])).to(eq([0, 1, 1, 0]))
  end

  it("takes a number and number of coins in the till and returns a string with the least amount of change possible") do
    expect((67).makechange([0, 0, 100, 100])).to(eq([0, 0, 13, 2]))
  end

end
