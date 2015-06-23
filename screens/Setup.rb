screen = TraxanosHD::Screen.new(xml, :Setup) do
  header do
    header_title "Setup"
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars("showNever")
    end
  end

  colorbar do
    colorbar_buttons2(true, true, false, false)
  end
end

screen.render!
