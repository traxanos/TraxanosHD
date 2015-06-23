screen = TraxanosHD::Screen.new(xml, :RecordPathsSettings, "Recording paths") do
  header do
    header_title "Recording paths"
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
    colorbar_buttons2(true, true, false, false)
  end
end

screen.render!
