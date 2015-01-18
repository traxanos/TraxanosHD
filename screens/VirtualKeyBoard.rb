TraxanosHD::Screen.new(xml, :VirtualKeyBoard, "Virtual KeyBoard") do
  position 0, 0, 99

  header do
    widget do
      position TraxanosHD.spacer, TraxanosHD.default_header_title_top_spacer
      size -(TraxanosHD.spacer*2), 48
      name "header"
      transparent 1
      font "SegoeUI", TraxanosHD.default_title_font_size
      nowrap 1
    end
  end

  main do
    label do
      size 696+2, 36+2
      background :foreground
    end

    label do
      position 1, 1
      size 696, 36
      background :background
    end

    label do
      position 2, 2
      font "FontAwesome", TraxanosHD.default_left_font_size
      orientation :center, :center
      size 30, 34
      text ""
      transparent 1
    end

    widget do
      position 33, 4
      size 696-32, 30
      name "text"
      font "Regular", TraxanosHD.default_left_font_size
      transparent 1
      nowrap 1
    end

    widget do
      position 0, 36 + TraxanosHD.spacer
      size 696, 300
      name "list"
      transparent 1
      selectiondisabled 1
    end
  end
end
