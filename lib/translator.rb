require './lib/dictionary'
require './lib/file_reader'

class Translator
  include Dictionary

  def to_braille(message)
    strings = message.chars
    strings.map do |letter|
      dictionary[letter]
    end
  end
end
