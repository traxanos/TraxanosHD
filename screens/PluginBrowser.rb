screen = TraxanosHD::Screen.new(xml, :PluginBrowser, "Plugins Manager") do
  header do
    header_title "Plugins"
  end

  main do
    # i hate that i cans style this screen
    # todo search for better way

    widget do
      size nil, 480
      itemheight 60
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

screen.render!
