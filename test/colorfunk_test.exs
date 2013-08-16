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

  
end
