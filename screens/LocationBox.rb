TraxanosHD::Screen.new(@main, :LocationBox) do
  header do
    widget do
      position TraxanosHD.spacer, TraxanosHD.default_header_title_top_spacer
      size -(TraxanosHD.spacer*2), 48
      name "text"
      transparent 1
      font "Regular", TraxanosHD.default_title_font_size
      nowrap 1
    end
  end

  main do

    label do
      position 0, 0
      size 772+2, 36+2
      background :foreground
    end

    label do
      position 1, 1
      size 772, 36
      background :background
    end

    label do
      position 2, 2
      font "FontAwesome", TraxanosHD.default_font_size
      orientation :center, :center
      size 30, 34
      text ""
      transparent 1
    end

    widget do
      position 33, 4
      size 772-32, 30
      name "target"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
      nowrap 1
    end

    filelist_height = 30*6

    widget do
      position 0, 36 + 12
      size nil, filelist_height
      itemheight 30
      name "filelist"
      transparent 1
      enablewraparound 1
      selectiondisabled 1
      scrollbars
    end

    label do
      position 0, 36 + 12 + (filelist_height) + TraxanosHD.spacer
      size nil, 36
      text ""
      font "FontAwesome", 26
      orientation :left, :center
      nowrap 1
      transparent 1

      position 2, 36 + 12 + (filelist_height) + TraxanosHD.spacer + 2
      font "FontAwesome", TraxanosHD.default_font_size
      orientation :center, :center
      size 30, 34
    end

    widget do
      position 33, 36 + 12 + (filelist_height) + TraxanosHD.spacer
      size -33, 36
      name "textbook"
      font "Regular", 24
      orientation :left, :center
      nowrap 1
      transparent 1
    end

    widget do
      position 0, 36 + 12 + (filelist_height) + TraxanosHD.spacer + 36 + 12
      size nil, 30*6
      itemheight 30
      name "booklist"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end

