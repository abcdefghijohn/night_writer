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

  def to_english(braille_element)
    english = []
     braille_element.each do |element|
       braille_dictionary.each do |braille, letter|
       english << letter if element == braille
       end
     end
     english.join
  end
end
