require './lib/braille_dictionary'
require './lib/file_reader'

class TranslatorToEnglish
  include BrailleDictionary

  def decode_one_element(element)
    braille_array = element.split("\n")
    braille_dictionary.select do |braille, letter|
    return letter if braille_array == braille
    end
  end

  def to_english(braille_chars)
    english = []
    braille_chars.each do |braille_char|
    braille_dictionary.each do |braille, letter|
    english << letter if braille_chars == braille
    end
    end
    english.join
  end
end
