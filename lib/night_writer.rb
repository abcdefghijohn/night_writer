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
