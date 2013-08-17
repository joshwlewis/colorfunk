defmodule ColorfunkTest do
  use ExUnit.Case

  test "hsv_to_rgb" do
    assert Colorfunk.hsv_to_rgb(120,1,1) == {0,1,0}
    assert Colorfunk.hsv_to_rgb(60,1,1) == {1,1,0}
    assert Colorfunk.hsv_to_rgb(240,0,1) == {1,1,1}
    assert Colorfunk.hsv_to_rgb(310,1,0) == {0,0,0}
  end

  test "hsl_to_rgb" do
    assert Colorfunk.hsl_to_rgb(120,1,0.5) == {0,1,0}
    assert Colorfunk.hsl_to_rgb(60,1,0.5) == {1,1,0}
    assert Colorfunk.hsl_to_rgb(240,0,1) == {1,1,1}
    assert Colorfunk.hsl_to_rgb(310,1,0) == {0,0,0}
  end

  test "rgb_to_hsv" do
    assert Colorfunk.rgb_to_hsv(0,1,0) == {120,1,1}
    assert Colorfunk.rgb_to_hsv(1,1,0) == {60,1,1}
    assert Colorfunk.rgb_to_hsv(1,1,1) == {0,0,1}
    assert Colorfunk.rgb_to_hsv(0,0,0) == {0,0,0}
  end

  test "hsv_to_hsl" do
    assert Colorfunk.hsv_to_hsl(120,1,1) == {120,1,0.5}
    assert Colorfunk.hsv_to_hsl(60,1,1) == {60,1,0.5}
    assert Colorfunk.hsv_to_hsl(240,0,1) == {240,0,1}
    assert Colorfunk.hsv_to_hsl(310,1,0) == {310,1,0}
  end

  test "hsl_to_hsv" do
    assert Colorfunk.hsl_to_hsv(120,1,0.5) == {120,1,1}
    assert Colorfunk.hsl_to_hsv(60,1,0.5) == {60,1,1}
    assert Colorfunk.hsv_to_hsl(240,0,1) == {240,0,1}
    assert Colorfunk.hsv_to_hsl(310,1,0) == {310,1,0}
  end
end
