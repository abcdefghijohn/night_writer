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

  def test_it_can_decode_a_braille_element
    translated = TranslatorToEnglish.new
    actual = "0.\n..\n.."
    assert_equal "a", translated.decode_one_element(actual)
  end

  # def test_it_can_decode_multiple_braille_elements
  #
  # end
end
