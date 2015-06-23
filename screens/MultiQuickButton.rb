screen = TraxanosHD::Screen.new(xml, :MultiQuickButton, "MultiQuickButton Panel") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  main_accent do
    pixmap do
      position 0, 2
      size 35, 25
      image "skin_default/buttons/key_0.png"
      foreground nil
      alphatest "on"
    end

    widget do
      position 39, 0
      size 316, 30
      name "key_0"
      orientation :left, :center
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      accent
    end


    pixmap do
      position 0, 38
      size 35, 25
      image "skin_default/buttons/key_1.png"
      foreground nil
      alphatest "on"
    end

    widget do
      position 39, 36
      size 316, 30
      name "key_1"
      orientation :left, :center
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      accent
    end


    pixmap do
      position 0, 74
      size 35, 25
      image "skin_default/buttons/key_2.png"
      foreground nil
      alphatest "on"
    end

    widget do
      position 39, 72
      size 316, 30
      name "key_2"
      orientation :left, :center
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      accent
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end

screen.render!
