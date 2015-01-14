TraxanosHD::Screen.new(xml, :Console, "Command execution") do
  header
  main do
    title :Title

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, -(48 + TraxanosHD.spacer)
      name "text"
      transparent 1
      font "Console", TraxanosHD.default_left_font_size
      scrollbars(nil)
    end

  end
end
