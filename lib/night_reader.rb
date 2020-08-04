require './lib/file_reader'
require './lib/translator_to_english'

file = FileReader.new
translator_to_english = TranslatorToEnglish.new



file_contents = file.read(ARGV[0])
p "Created '#{ARGV[1]}' containing #{file_contents.length} characters"
