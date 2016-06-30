class Fixnum
  define_method(:allergies) do
    result = []
    self.to_s(2).reverse.split("").each_with_index do |str, i|
      result << %w[eggs peanuts shellfish strawberries tomatoes chocolate pollen cats][i] if str.to_i == 1
    end
    result
  end
end
