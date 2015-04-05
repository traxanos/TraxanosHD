TraxanosHD::Screen.new(xml, :MMIDialog) do
  header do
    widget do
      position TraxanosHD.spacer, TraxanosHD.default_header_title_top_spacer
      size -(TraxanosHD.spacer*2), 48
      name "title"
      transparent 1
      font "Regular", TraxanosHD.default_title_font_size
      nowrap 1
      orientation :left, :center
    end
  end

  main do
    widget do
      size nil, 48
      name "subtitle"
      font "Regular", TraxanosHD.default_font_size + 2
      orientation :center, :left
      transparent 1
    end

    widget do
      position 0, 60
      size nil, 30*13
      itemheight 30
      name "entries"
      transparent 1
      scrollbars
    end

    widget do
      position 0, -30
      size nil, 30
      name "bottom"
      font "Regular", TraxanosHD.default_font_size
      orientation :center, :center
      transparent 1
    end


  end

end