TraxanosHD::Screen.new(@main, :ChannelSelection, "Channel selection") do
  header do
    header_title :Title
  end

  main do
    widget do
      position 0
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

  main_accent do
    widget do
      position 0, 0
      size nil, 36
      nowrap 1
      transparent 1
      font "Regular", 22
      render "Label"
      source "ServiceEvent"
      accent
      orientation :left, :top
      convert "name", type: "EventName"
    end

    widget do
      position 0, 36 + 12
      size 62, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "ServiceEvent"
      accent
      orientation :left, :center
      convert "StartTime", type: "EventTime"
      convert type: "ClockToText"
    end

    progressbar do
      position 67, 36 + 12 + 9
      size 220, 5
      transparent 1
      source "ServiceEvent"
      accent
      secondary
      convert "Progress", type: "EventTime"
    end

    widget do
      position -62, 36 + 12
      size 62, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "ServiceEvent"
      accent
      orientation :right, :center
      convert "EndTime", type: "EventTime"
      convert type: "ClockToText"
    end

    widget do
      position 0, 36 + 12 + 9 + 24 + 9
      size nil, 303
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "VRunningText"
      config "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap"
      source "ServiceEvent"
      accent
      convert "ExtendedDescription", type: "EventName"
    end

    widget do
      position 0, -79
      size nil, 60
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-2
      render "NextEvent"
      source "ServiceEvent"
      accent
      orientation :left, :top
    end

  end

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      position -72
      size 72, 30
      text "MENU"
      font "Regular", TraxanosHD.default_font_size-2
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end

    label do
      position -(72+TraxanosHD.spacer+66)
      size 66, 30
      text "EPG"
      font "Regular", TraxanosHD.default_font_size-2
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end

end

