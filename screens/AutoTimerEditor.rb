TraxanosHD::Screen.new(xml, :AutoTimerEditor, "AutoTimer Settings") do
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
      scrollbars
    end

  end

  main_accent do
    widget do
      source "help"
      render "Label"
      font "Regular", TraxanosHD.default_font_size-1
      orientation :center, :top
      transparent 1
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end
