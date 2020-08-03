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

  def test_it_can_display_initial_message
    expected = expected = "Created 'braille.txt' containing 10 characters"
    assert_equal expected, @night_writer.initial_message
  end
end

  # def test_initial_message_prints
  #   night_writer = NightWriter.new
  #   night_writer.read_from_file
  #   night_writer.write_to_file
  #   expected = "Created 'braille.txt' containing 11 characters"
  #   assert_equal expected, night_writer.initial_message
  # end

#   def test_it_can_display_initial_message
#     ARGV.replace ["message.txt", "braille.txt"]
#     night_writer = NightWriter.new
#
#     expected = "Created 'braille.txt' containing 11 characters"
#     assert_equal expected, night_writer.initial_message
#   end
