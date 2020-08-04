require './lib/file_reader'
require './lib/translator_to_english'

file = FileReader.new
translator = TranslatorToEnglish.new

file_contents = file.read(ARGV[0])
file.write(ARGV[1], file_contents)


p "Created '#{ARGV[1]}' containing #{file_contents.length} characters"
