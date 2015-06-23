screen = TraxanosHD::Screen.new(xml, :Subtitles, "Subtitle selection") do
  header do
    header_title "Subtitle selection"
  end

  main do
    widget do
      size nil, 480
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end
end

screen.render!
