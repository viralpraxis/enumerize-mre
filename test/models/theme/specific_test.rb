# magic_ball.rb
require 'minitest/autorun'

class ThemeSpecificTest < Minitest::Test
  def test_creation
    record = Theme::Specific
      .new
      .tap { _1.menu_variant = "border" }
      .tap(&:save!)

    assert_equal record.reload.menu_variant, "border"
  end
end
