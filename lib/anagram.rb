class Anagram
  def initialize(word = '')
    @word = word
  end

  attr_accessor :word

  def match(word_array)
    match_array = @word.split('')
    match_array.sort!
    final_array = []
    word_array.each do |word|
      test_array = word.split('')
      test_array.sort!
      final_array.push(word) if test_array == match_array
    end
    final_array
  end
end
