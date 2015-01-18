TraxanosHD::Screen.new(xml, :NimSetup, "Reception Settings") do
  header do
    header_title "Reception Settings"
  end

  main do
    widget do
      size nil, 480
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end
end
