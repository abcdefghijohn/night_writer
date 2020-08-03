require './lib/file_reader'

class NightWriter

  def initialize(input_file, output_file)
    @reader = FileReader.new
    @input_file = @reader.read
    @output_file = output_file
    initial_message
  end

  def initial_message
    # file_contents = File.read(ARGV[0])
    "Created '#{@output_file}' containing #{@input_file.length} characters"
  end
end
