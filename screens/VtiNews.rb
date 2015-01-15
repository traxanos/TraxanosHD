TraxanosHD::Screen.new(xml, :VtiNews, "VTI News") do
  header
  main do
    title :title

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 408
      name "newsVTI"
      font "Regular", TraxanosHD.default_left_font_size
      transparent 1
    end

  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end
