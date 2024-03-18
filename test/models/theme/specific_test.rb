# magic_ball.rb
require 'minitest/autorun'

class MagicBallTest < Minitest::Test
  def test_ask_returns_an_answer
    record = Theme::Specific.new

    record.menu_variant = "border"

    record.save!

    assert_equal record.reload.menu_variant, "border"
  end
end
