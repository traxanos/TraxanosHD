TraxanosHD::Screen.new(xml, :SkinSelector, "Skin Selector") do
  header
  main do
    title "Choose your Skin"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*13
      itemheight 30
      name "SkinList"
      transparent 1
      enablewraparound 1
      scrollbars
    end

    widget do
      position 0, 48 + TraxanosHD.spacer + (30*13)
      size nil, 30
      source "introduction"
      render "Label"
      font "Regular", 18
      orientation :left, :top
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
