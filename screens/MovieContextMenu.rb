screen = TraxanosHD::Screen.new(xml, :MovieContextMenu, "Movielist menu") do
  header do
    header_title "Movielist menu"
  end

  main do
    widget do
      size nil, 510
      itemheight 30
      name "menu"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end
end

screen.render!
