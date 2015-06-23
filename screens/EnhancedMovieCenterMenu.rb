TraxanosHD::Screen.new(@main, :EnhancedMovieCenterMenu, "EnhancedMovieCenterMenu") do
  header do
    header_title "EnhancedMovieCenterMenu"
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

  main_accent do
    widget do
      source "help"
      render "Label"
      font "Regular", TraxanosHD.default_font_size-1
      accent
    end
  end

  colorbar do
    colorbar_buttons1(true, true, false, true)
  end
end

