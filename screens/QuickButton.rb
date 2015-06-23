screen = TraxanosHD::Screen.new(:QuickButton, "QuickButton") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end

screen.render!(@main)
