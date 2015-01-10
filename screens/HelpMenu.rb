TraxanosHD::Screen.new(xml, :HelpMenu, "Menu") do
  header
  main do
    title "help..."
    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 34*13
      itemheight 34
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

  main_accent do

  end

  widget do
    position 968, 159, 10
    size 154, 500
    name "rc"
    alphatest "blend"
    images "skin_default/rc_vu_1.png,skin_default/rc_vu_2.png,skin_default/rc_vu_3.png"
    foreground nil
  end

  widget do
    position 867, 651, 11
    size 356, 24
    name "long_key"
    font "Regular", 18
    orientation :center, :center
    transparent 1
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "skin_default/arrowdown.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowdown"
    foreground nil
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "skin_default/arrowdown.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowdown2"
    foreground nil
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "skin_default/arrowup.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowup"
    foreground nil
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "skin_default/arrowup.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowup2"
    foreground nil
  end

end