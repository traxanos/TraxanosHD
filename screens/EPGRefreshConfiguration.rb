TraxanosHD::Screen.new(xml, :EPGRefreshConfiguration) do
  header do
    header_title "EPG Refresh Configuration"
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
    colorbar_buttons2(true, true, true, true)
  end

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      size 72, 30
      text "INFO"
      font "Regular", TraxanosHD.default_font_size-2
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end
end