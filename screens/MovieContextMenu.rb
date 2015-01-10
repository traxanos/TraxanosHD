TraxanosHD::Screen.new(xml, :MovieContextMenu, "Movielist menu") do
  header
  main do
    title "Movielist menu"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      itemheight 30
      name "menu"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end
end
