require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start
require './lib/night_writer'


class NightWriterTest < MiniTest::Test

  def setup
    @input_file = "message.txt"
    @output_file = "braille.txt"
    ARGV[0] = @input_file
    ARGV[1] = @output_file
    @night_writer = NightWriter.new(@input_file, @output_file)
  end

  def test_it_exists
    assert_instance_of NightWriter, @night_writer
  end
end
