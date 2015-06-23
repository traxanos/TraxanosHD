screen = TraxanosHD::Screen.new(xml, :VTiUpdateInfo, "VTI News") do
  header do
    header_title :title
  end
  main do
    widget do
      size nil, 99
      name "header"
      transparent 1
      font "Regular", 36
      orientation :left, :top
    end

    widget do
      position 0, 99 + TraxanosHD.spacer
      size nil, 30*13
      name "update"
      transparent 1
      font "Regular", TraxanosHD.default_font_size
      orientation :left, :top
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end

end

screen.render!
