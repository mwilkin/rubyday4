class String
  define_method(:anagram) do |word_list|
    self_sorted = self.gsub(/[^a-zA-Z0-9]/i, "").split("").sort().join("")
    result = Hash.new
    word_list.each() do |word|
      word.gsub!(/[^a-zA-Z0-9]/i, "")
      result[word] = (word.split("").sort().join("") == self_sorted)
    end
    result
  end
end
