class Fixnum
  define_method(:allergies) do
    i = 0
    allergen = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats" ]
    result = []
    self.to_s(2).reverse.split("").each() do |str|
      result << allergen[i] if str.to_i == 1
      i += 1
    end
    result
  end
end
