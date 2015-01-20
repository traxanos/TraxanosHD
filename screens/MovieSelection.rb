TraxanosHD::Screen.new(xml, :MovieSelection, "Select a movie") do
  header do
    header_title "Select a movie"
  end

  main do
    widget do
      position 0, 0
      size nil, 30
      name "freeDiskSpace"
      transparent 1
      nowrap 1
      font "Regular", TraxanosHD.default_font_size-2
      orientation :left, :top
    end

    widget do
      position 0, 30
      size nil, 30*15
      itemheight 30
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
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
      font "Share", 24
      render "Label"
      source "Service"
      accent
      orientation :left, :top
      convert "name", type: "EventName"
    end

    widget do
      position 0, 36 + 12
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "Label"
      source "Service"
      accent
      orientation :left, :center
      convert "Duration", type: "ServiceTime"
      convert "AsLength", type: "ClockToText"
    end

    widget do
      position 0, 36 + 12
      size nil, 24
      nowrap 1
      transparent 1
      font "Share", TraxanosHD.default_right_font_size
      render "Label"
      source "Service"
      accent
      orientation :center, :center
      convert "RecordServiceName", type: "MovieInfo"
    end

    widget do
      position 0, 36 + 12
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "Label"
      source "Service"
      accent
      orientation :right, :center
      convert "FileSize", type: "MovieInfo"
    end

    widget do
      position 0, 36 + 12 + 9 + 24 + 9
      size nil, 303
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "VRunningText"
      config "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap"
      source "Service"
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
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end

    label do
      position -(72+TraxanosHD.spacer+66)
      size 66, 30
      text "EPG"
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end
end
