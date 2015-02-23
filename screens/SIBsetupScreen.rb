TraxanosHD::Screen.new(xml, :SIBsetupScreen, "Second-InfoBar setup") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons3("Save", "Cancel", false, false)
  end
end
