TraxanosHD::Screen.new(xml, :Dish) do
  position 1111, 135, -1
  size 130, 160

  widget do
    name "Dishpixmap"
    image "skin_default/icons/dish.png"
    alphatest "off"
    foreground nil
  end
end
