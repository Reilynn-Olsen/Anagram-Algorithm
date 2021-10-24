class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(array)
    matches = []
    array.each do |w|
      matches.push(w) if matches?(w.downcase)
    end
    matches
  end

  def matches?(w)
    w.chars.sort == word.downcase.chars.sort && w != word.downcase
  end
end
 