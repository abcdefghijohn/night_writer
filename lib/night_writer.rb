require './lib/file_reader'
require './lib/translator'

file = FileReader.new
translator = Translator.new

file_contents = file.read(ARGV[0])

output = file.write(ARGV[1], translation)
# end.join("\n")
# translation = translator.to_braille(file_contents)


p "Created '#{ARGV[1]}' containing #{file_contents.length} characters"
