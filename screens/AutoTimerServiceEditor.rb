screen = TraxanosHD::Screen.new(xml, :AutoTimerServiceEditor, "Edit AutoTimer Services") do
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

  main_accent do
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end

screen.render!
