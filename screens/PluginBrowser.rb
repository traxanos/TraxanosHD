TraxanosHD::Screen.new(xml, :PluginBrowser, "Plugins Manager") do
  header
  main do
    title "Plugins"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 54*7
      itemheight 54
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

  colorbar do
    colorbar_buttons1("red", "green")
  end
end
