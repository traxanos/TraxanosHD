screen = TraxanosHD::Screen.new(:ServiceInfo, "Serviceinfo") do
  header do
    header_title "Serviceinfo"
  end

  main do
    widget do
      size nil, 480
      itemheight 30
      name "infolist"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons1(:red, :green, :yellow, :blue)
  end
end

screen.render!(@main)
