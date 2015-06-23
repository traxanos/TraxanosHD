TraxanosHD::Screen.new(@main, :AtileHD_Config, "AtileHD Setup") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars("showNever")
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end

  main_accent do
    widget do
      position ((TraxanosHD.right_width-280-(TraxanosHD.spacer*2))/2), ((TraxanosHD.right_width-280-(TraxanosHD.spacer*2))/2)
      size 280, 210
      name "Picture"
      alphatest "on"
      accent
      foreground nil
    end
  end
end

