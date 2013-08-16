defmodule Colorfunk do

  def hsv_to_rgb(hue, saturation, value) do
    c = saturation * value
    h = div hue, 60
    m = value - c
    rgb(h,c,m)
  end

  def hsl_to_rgb(hue, saturation, lightness) do
    c = (1 - abs(2 * lightness - 1)) * saturation
    h = div hue, 60
    m = lightness - c / 2
    rgb(h,c,m)
  end

  defp rgb(h,c,m) do
    x = c * (1 - abs(rem(h,2) - 1))
    {r,g,b} = cond do
      h < 1 -> {c,x,0}
      h < 2 -> {x,c,0}
      h < 3 -> {0,c,x}
      h < 4 -> {0,x,c}
      h < 5 -> {x,0,c}
      h < 6 -> {c,0,x}
    end
    {r + m, g + m, b + m}
  end
end