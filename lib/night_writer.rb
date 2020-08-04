require './lib/file_reader'
require './lib/translator'

file = FileReader.new
translator = Translator.new

file_contents = file.read(ARGV[0])
split = file_contents.scan(/.{1,40}/)
split.map do |string|
translation = translator.to_braille(string)
output = file.write(ARGV[1], translation)
end.join("\n")
# translation = translator.to_braille(file_contents)


p "Created '#{ARGV[1]}' containing #{file_contents.length} characters"
