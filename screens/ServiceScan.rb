screen = TraxanosHD::Screen.new(xml, :ServiceScan, "Service Scan") do
  header do
    header_title "Service Scan"
  end

  main do
    widget do
      size nil, 24
      name "network"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
    end

    widget do
      position 0, 24 + 12
      size nil, 24
      name "transponder"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
    end

    label do
      position 0, 24 + 12 + 24 + 12 + 2
      size nil, 1
      background :white
    end

    widget do
      position 0 , 24 + 12 + 24 + 12
      size nil, 5
      name "scan_progress"
      custom "borderWidth", "0"
      custom "borderColor", "backgroundAccent"
      transparent 1
    end

    widget do
      position 0, 24 + 12 + 24 + 12 + 6 + 12
      size nil, 24
      name "scan_state"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
    end

    widget do
      position 0, 24 + 12 + 24 + 12 + 6 + 12 + 24 + 12
      size nil, 24
      name "pass"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
    end

    widget do
      position 0, 30*7
      size nil, 30*10
      itemheight 30
      name "servicelist"
      transparent 1
      scrollbars
      selectiondisabled 1
    end
  end
end

screen.render!
