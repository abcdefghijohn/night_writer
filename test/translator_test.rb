require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start
require './lib/translator'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_it_can_encode_a_single_letter_to_braille
    translator = Translator.new
    expected = [["0.", "..", ".."]]
    assert_equal expected, translator.to_braille("a")
  end

  def test_it_can_encode_multiple_letters_to_braille
    translator = Translator.new
    expected = [["00", "0.", ".."],
                ["00", "..", "0."],
                ["0.", "0.", "0."]]
    assert_equal expected, translator.to_braille("fml")
  end

  def test_it_can_limit_to_80_characters
    skip
    translator = Translator.new
    input = ["000000000000000000000000000000000000000000000000
              00000000000000000000000000000000.................
              .................................................
              .................................."]
    expected = "0000000000000000000000000000000000000000000000
                0000000000000000000000000000000000\n...........
                ...............................................
                .........................................."
    assert_equal expected, translator.limit_to_80(input)
  end
end
