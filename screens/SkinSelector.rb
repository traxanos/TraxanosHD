screen = TraxanosHD::Screen.new(:SkinSelector, "Skin Selector") do
  header do
    header_title "Choose your Skin"
  end

  main do
    widget do
      size nil, 30*15
      itemheight 30
      name "SkinList"
      transparent 1
      enablewraparound 1
      scrollbars
    end

    widget do
      position 0, 30*15
      size nil, 30
      source "introduction"
      render "Label"
      font "Regular", TraxanosHD.default_font_size-2
      orientation :left, :center
    end
  end

  main_accent do
    widget do
      position ((TraxanosHD.right_width-280-(TraxanosHD.spacer*2))/2), ((TraxanosHD.right_width-280-(TraxanosHD.spacer*2))/2)
      size 280, 210
      name "Preview"
      alphatest "on"
      accent
      foreground nil
    end
  end

  colorbar do
    colorbar_buttons2(true)
  end
end

screen.render!(@main)
