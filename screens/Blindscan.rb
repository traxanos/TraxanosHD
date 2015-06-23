screen = TraxanosHD::Screen.new(xml, :Blindscan, "Blindscan") do
  header do
    header_title "Blindscan"
  end

  main do
    widget do
      size nil, 30*14
      itemheight 30
      name "config"
      transparent 1
      scrollbars
    end

    widget do
      position 0, (30*14) + TraxanosHD.spacer
      size nil, 30
      name "introduction"
      font "Regular", TraxanosHD.default_font_size
      orientation :center, :center
      transparent 1
    end
  end

  colorbar do
    colorbar_buttons2(true, true, false, true)
  end
end

screen.render!
