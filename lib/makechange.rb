class Fixnum
  define_method(:makechange) do
    amount = self
    denom = [25, 10, 5, 1]
    result = []
    i = 0
    until i >= denom.length do
      result.push((amount - (amount % denom[i]))/denom[i])
      amount -= amount - (amount % denom[i])
      i += 1
    end
    result
  end
end 
