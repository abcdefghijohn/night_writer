require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start
require './lib/translator_to_english'

class TranslatorToEnglishTest < Minitest::Test

  def test_it_exists
    translator_to_english = TranslatorToEnglish.new
    assert_instance_of TranslatorToEnglish, translator_to_english
  end

  def test_it_can_decode_a_braille_element_to_a_letter
    translator = Translator.new
    actual = [["0.", "..", ".."]]
    assert_equal ("a"), translator_to_english.to_english(actual)
  end
end
