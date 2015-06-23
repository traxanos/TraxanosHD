TraxanosHD::Screen.new(@main, :AutoTimerOverview, "AutoTimer Overview") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "entries"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

  main_accent do
  end

  colorbar do
    colorbar_buttons2(false, true, true, true)
  end

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      position -72
      size 72, 30
      text "MENU"
      font "Regular", TraxanosHD.default_font_size-2
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end

  end
end

