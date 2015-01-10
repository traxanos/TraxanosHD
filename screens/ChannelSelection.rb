TraxanosHD::Screen.new(xml, :ChannelSelection, "Channel selection") do
  header
  main do
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

  main_accent do
    widget do
      position 67, 30
      size 220, 132
      render "Picon"
      source "ServiceEvent"
      alphatest "blend"
      accent
      convert "Reference", type: "ServiceName"
      foreground nil
    end

    widget do
      position 0, 180
      size 62, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "Label"
      source "ServiceEvent"
      accent
      orientation :left, :center
      convert "StartTime", type: "EventTime"
      convert type: "ClockToText"
    end

    progressbar do
      position 67, 189
      size 220, 5
      transparent 1
      source "ServiceEvent"
      accent
      convert "Progress", type: "EventTime"
    end

    widget do
      position -62, 180
      size 62, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "Label"
      source "ServiceEvent"
      accent
      orientation :left, :center
      convert "EndTime", type: "EventTime"
      convert type: "ClockToText"
    end

    widget do
      position 0, 222
      size nil, 255
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "VRunningText"
      config "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap"
      source "ServiceEvent"
      accent
      convert "ExtendedDescription", type: "EventName"
    end
  end

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      position -72
      size 72, 30
      text "MENU"
      font "SegoeUI", 20
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end

end
