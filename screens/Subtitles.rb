TraxanosHD::Screen.new(xml, :Subtitles, "Subtitle selection") do
  header
  main do
    title "Subtitle selection"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

end
