TraxanosHD::Screen.new(xml, :EventView, "EventView") do
  header
  main do
    title "EPG Selection"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 420
      name "epg_description"
      font "Regular", TraxanosHD.default_left_font_size
      transparent 1
      scrollbars(nil)
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end
