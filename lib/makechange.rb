class Fixnum
  define_method(:makechange) do | till |
    amount = self
    denom = [25, 10, 5, 1]
    result = []
    i = 0
    until i >= denom.length do
      amt_left = amount - (amount % denom[i])
      coins = (amt_left / denom[i])
      if coins <= till[i]
        result.push(coins)
        amount -= amt_left
      else
        result.push(till[i] * denom[i])
        amount -= till[i] * denom[i]
      end
      i += 1
    end
    result
  end
end
