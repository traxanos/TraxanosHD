TraxanosHD::Screen.new(@main, :EventView, "EventView") do
  header do
    header_title "EPG Selection"
  end

  main do
    widget do
      size nil, 480
      name "epg_description"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
      scrollbars(nil)
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end

