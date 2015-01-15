TraxanosHD::Screen.new(xml, :VirtualKeyBoard, "Virtual KeyBoard") do
  position 0, 0, 99
  header
  main do
    title "Virtual KeyBoard"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 36
      name "header"
      font "Bold", TraxanosHD.default_left_font_size+2
      transparent 1
      nowrap 1
    end

    label do
      position 0, 48 + TraxanosHD.spacer + 36 + TraxanosHD.spacer
      size 696+2, 36+2
      background :foreground
    end

    label do
      position 1, 48 + TraxanosHD.spacer + 36 + TraxanosHD.spacer + 1
      size 696, 36
      background :background
    end

    label do
      position 2, 48 + TraxanosHD.spacer + 36 + TraxanosHD.spacer + 2
      font "FontAwesome", TraxanosHD.default_left_font_size
      orientation :center, :center
      size 30, 34
      text ""
      transparent 1
    end

    widget do
      position 33, 48 + TraxanosHD.spacer + 36 + TraxanosHD.spacer + 4
      size 696-32, 30
      name "text"
      font "Regular", TraxanosHD.default_left_font_size
      transparent 1
      nowrap 1
    end

    widget do
      position 0, 48 + TraxanosHD.spacer + 36 + TraxanosHD.spacer + 36 + TraxanosHD.spacer
      size 696, 300
      name "list"
      transparent 1
      selectiondisabled 1
    end
  end
end
