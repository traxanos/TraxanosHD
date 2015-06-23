# erreichbar per Menü - Timer - Datensatz bearbeiten - Kanal auswählen
screen = TraxanosHD::Screen.new(:SimpleChannelSelection, "Channel selection") do
  header do
    header_title :Title
  end

  main do
    # copy of ChannelSelection without Accent
    widget do
      size nil, 480
      itemheight 30
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
      custom "progressbarHeight", "12"
      custom "colorEventProgressbarBorder", "foreground"
      custom "colorEventProgressbarBorderSelected", "foreground"
      custom "colorServiceDescription", "channelSelection2"
      custom "colorServiceDescriptionSelected", "channelSelection2Select"
      custom "foregroundColorServiceNotAvail", "#00555555"
      custom "serviceItemHeight", 30
      custom "serviceInfoFont", "Regular; #{TraxanosHD.default_font_size}"
      custom "serviceNameFont", "Regular; #{TraxanosHD.default_font_size}"
      custom "serviceNumberFont", "Regular; #{TraxanosHD.default_font_size}"
      custom "colorServiceRecording", "red"
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end

screen.render!(@main)
