require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start
require './lib/translator_to_english'

class TranslatorToEnglishTest < Minitest::Test

  def test_it_exists
    translated = TranslatorToEnglish.new
    assert_instance_of TranslatorToEnglish, translated
  end

  def test_it_can_split_braille_characters
    translated = TranslatorToEnglish.new
    input = "0.0...00....\n00.00.0..0\n000...0000.."
    expected = ["0.0...00....", "00.00.0..0", "000...0000.."]

    assert_equal expected, translated.split_braille(input)
  end

  def test_it_can_decode_a_braille_element_to_a_letter
    skip
    translated = TranslatorToEnglish.new
    actual = [["0.", "..", ".."]]
    assert_equal ("a"), translated.to_english(actual)
  end
end
