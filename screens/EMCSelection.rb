screen = TraxanosHD::Screen.new(:EMCSelection, "Select a movie") do
  header do
    header_title "Select a movie"

    widget do
      position TraxanosHD.left_width-TraxanosHD.spacer-480, -30-12
      size 480, 24
      source "Title"
      render "Label"
      transparent 1
      nowrap 1
      font "Regular", TraxanosHD.default_font_size-2
      orientation :right, :center
    end

  end

  main do
    widget do
      position 0, 0
      size nil, 30*16
      itemheight 30
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
      custom "CoolFont", "Regular; 20"
      custom "CoolSelectFont", "Regular; 20"
      custom "CoolDateFont", "Regular; 20"
      custom "CoolMoviePos", "35"
      custom "CoolMovieSize", "545"
      custom "CoolFolderSize", "545"
      custom "CoolTitleColor", "1"
      custom "CoolDatePos", "660"
      custom "CoolDateWidth", "150"
      custom "CoolDateColor", "1"
      custom "CoolHighlightColor", "1"
      custom "CoolProgressPos", "500"
      custom "CoolBarPos", "500"
      custom "CoolBarHPos", "9"
      custom "CoolBarSize", "55,12"
      custom "CoolBarSizeSa", "124,16"
      custom "DefaultColor", "orange"
      custom "UnwatchedColor", "foreground"
      custom "WatchingColor", "blue"
      custom "FinishedColor", "green"
      custom "RecordingColor", "red"
      custom "BackColorSel", "selectionBG"
      custom "FrontColorSel", "selectionFG"
      custom "foregroundColorSelected", "selectionFG"
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
      source "Service"
      accent
      orientation :left, :top
      convert "Name", type: "EMCEventName"
    end

    x = 36 + 12
    widget do
      position 0, x
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "Service"
      accent
      orientation :left, :center
      convert "StartTime", type: "EMCServiceTime"
      convert "Format:%H:%M", type: "EMCClockToText"
    end

    widget do
      position 0, x
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "Service"
      accent
      orientation :center, :center
      convert "StartTime", type: "EMCServiceTime"
      convert "Format:%d.%m.%Y", type: "EMCClockToText"
    end

    widget do
      position 0, x
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "Service"
      accent
      orientation :right, :center
      convert "EndTime", type: "EMCServiceTime"
      convert "Format:%H:%M", type: "EMCClockToText"
    end

    x = 36 + 12 + 24 + 12
    widget do
      position 0, x
      size nil, 348
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "VRunningText"
      config "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap"
      source "Service"
      accent
      convert "ExtendedDescription", type: "EMCEventName"
    end

    x = -36-12
    widget do
      position 0, x
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "Service"
      accent
      orientation :left, :center
      convert "Duration", type: "EMCServiceTime"
      convert "Format:%Hh:%Mmin", type: "EMCClockToText"
    end

    widget do
      position 0, x
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "Service"
      accent
      orientation :center, :center
      convert "RecordServiceName", type: "EMCMovieInfo"
    end

    widget do
      position 0, x
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "Label"
      source "Service"
      accent
      orientation :right, :center
      convert "FileSize", type: "EMCMovieInfo"
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

screen.render!(@main)
