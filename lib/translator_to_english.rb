require './lib/braille_dictionary'
require './lib/file_reader'

class TranslatorToEnglish
  include BrailleDictionary

  def split_braille(message)
    length = message.length / 3
    message.scan(/.{1,#{length}}/)
  end
end
