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

  def rgb_to_hsv(0,0,0) do
    {0,0,0}
  end

  def rgb_to_hsv(red, green, blue) do
    value = Enum.max([red, green, blue])
    [red, green, blue] = Enum.map([red, green, blue], fn(x) -> div x, value end)
    max = Enum.max([red, green, blue])
    min = Enum.min([red, green, blue])
    saturation = max - min
    if saturation == 0 do
      {0, 0, value}
    else
      [red, green, blue] = Enum.map([red, green, blue], fn(x) -> div x - min, saturation end)

      if max == red do
        hue = 60 * (green - blue)
        if hue < 0 do
          hue = hue + 360
        end
      else 
        if max == green do
          hue = 120 + 60 * (blue - red)
        else
          hue = 240 + 60 * (red - green)
        end
      end
      {hue, saturation, value}
    end
  end
end