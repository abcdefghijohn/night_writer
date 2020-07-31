require './lib/file_reader'
class NightWriter
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end
end
