require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_reader'

class FileReaderTest < MiniTest::Test

  def test_it_exits
    file_reader = FileReader.new
    assert_instance_of FileReader, file_reader
  end
end
