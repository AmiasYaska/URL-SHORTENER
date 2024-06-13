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
    assert_equal "10", ShortCode.encode(62)
  end
  test "encode 10" do
    assert_equal "a", ShortCode.encode(10)
  end
  test "encode 1024" do
    assert_equal "gw", ShortCode.encode(1024)
  end
  test "encode 2335" do
    assert_equal "BF", ShortCode.encode(2335)
  end
  test "encode 97162" do
    assert_equal "ph8", ShortCode.encode(97162)
  end
  test "encode 999999" do
    assert_equal "4c91", ShortCode.encode(999999)
  end


  test "decode b" do
    assert_equal 11, ShortCode.decode("b")
  end
  test "decode BF" do
    assert_equal 2335, ShortCode.decode("BF")
  end
  test "decode ph8" do
    assert_equal 97162, ShortCode.decode("ph8")
  end
  test "decode 4c91" do
    assert_equal 999999, ShortCode.decode("4c91")
  end

end
