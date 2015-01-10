TraxanosHD::Screen.new(xml, :ServiceInfo, "Serviceinfo") do
  header
  main do
    title "Serviceinfo"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
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
