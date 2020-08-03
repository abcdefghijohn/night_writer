require './lib/file_reader'
class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
  end
end

# throw in cmd  in terminal
# regardless of what it is
# message.txt or braille.txt
# will print out the "created ....."
#
# night writer - in charge of pasting initial input
# reader - in charge of reading files

# First make it work
# Then make it pretty

file_contents = File.read(ARGV[0])
puts "Created '#{ARGV[1]}' containing #{file_contents.length} characters"
