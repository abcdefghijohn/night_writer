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

  def limit_to_80(input)
    split = file_contents.scan(/.{1,40}/)
    split.map do |string|
      translator.to_braille(string)
    end.join("\n")
  end
end
