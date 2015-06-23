screen = TraxanosHD::Screen.new(:ScanSetup, "Manual Scan") do
  header do
    header_title "Manual Scan"
  end

  main do
    widget do
      size nil, 30*15
      itemheight 30
      name "config"
      transparent 1
      scrollbars
    end

    widget do
      position 0, -30
      size nil, 30
      name "introduction"
      font "Regular", TraxanosHD.default_font_size
      orientation :center, :center
      transparent 1
    end
  end

end

screen.render!(@main)
