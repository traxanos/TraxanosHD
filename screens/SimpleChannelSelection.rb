# erreichbar per Menü - Timer - Datensatz bearbeiten - Kanal auswählen
TraxanosHD::Screen.new(xml, :SimpleChannelSelection, "Channel selection") do
  header
  main do
    # copy of ChannelSelection without Accent
    title :Title
    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      itemheight 30
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
      custom "colorEventProgressbarBorder", "foreground"
      custom "colorEventProgressbarBorderSelected", "foreground"
      custom "colorServiceDescription", "channelSelection2"
      custom "colorServiceDescriptionSelected", "channelSelection2Select"
      custom "foregroundColorServiceNotAvail", "#00555555"
      custom "serviceItemHeight", 30
      custom "serviceInfoFont", "Regular; #{TraxanosHD.default_left_font_size}"
      custom "serviceNameFont", "Regular; #{TraxanosHD.default_left_font_size}"
      custom "serviceNumberFont", "Regular; #{TraxanosHD.default_left_font_size}"
      custom "colorServiceRecording", "red"
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end