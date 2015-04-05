TraxanosHD::Screen.new(xml, :CiSelection, "Common Interface") do
  header do
    header_title "Common Interface"
  end

  main do
    widget do
      size nil, 48
      name "text"
      font "Regular", TraxanosHD.default_title_font_size
      orientation :center, :center
      transparent 1
    end

    widget do
      position 0, 60
      size nil, 30*15
      itemheight 30
      name "entries"
      transparent 1
      scrollbars
    end

  end

end