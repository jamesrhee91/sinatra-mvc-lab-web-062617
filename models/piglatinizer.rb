class PigLatinizer
  # attr_accessor :word
  VOWELS = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  def piglatinize(word)
    latinized = word

    word.each_char do |ch|
      break if VOWELS.include?(ch)
      latinized = latinized[1..-1] + latinized[0]
    end
    latinized + latinizer(word)
  end

  def latinizer(word)
    VOWELS.any? {|ch| word[0] == ch} ? "way" : "ay"
  end

  def to_pig_latin(words)
    words.split.map {|word| piglatinize(word)}.join(" ")
  end
end
