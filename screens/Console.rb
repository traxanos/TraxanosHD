TraxanosHD::Screen.new(xml, :Console, "Command execution") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 510
      name "text"
      transparent 1
      font "Console", TraxanosHD.default_font_size
      scrollbars(nil)
    end

  end
end
