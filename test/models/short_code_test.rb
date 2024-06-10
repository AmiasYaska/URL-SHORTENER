require "test_helper"

class ShortCodeTest < ActiveSupport::TestCase
  test "encode 0" do
    assert_equal "0" ShortCode.encode(0)
  end
  test "encode 1" do
    assert_equal "1" ShortCode.encode(0)
  end
  test "encode 11" do
    assert_equal "b" ShortCode.encode(0)
  end

end
