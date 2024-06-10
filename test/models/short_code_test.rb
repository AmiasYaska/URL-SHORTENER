require "test_helper"

class ShortCodeTest < ActiveSupport::TestCase
  test "encode 0" do
    assert_equal "0", ShortCode.encode(0)
  end
  test "encode 1" do
    assert_equal "1", ShortCode.encode(1)
  end
  test "encode 11" do
    assert_equal "b", ShortCode.encode(11)
  end
  test "encode 62" do
    assert_equal "Z", ShortCode.encode(60)
  end
  test "encode 10" do
    assert_equal "a", ShortCode.encode(10)
  end

end
