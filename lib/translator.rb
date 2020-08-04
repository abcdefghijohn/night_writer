require './lib/dictionary'

class Translator
  include Dictionary

  def to_braille(char)
    char.map do |letter|
    dictionary[letter]
  end
  end
end
