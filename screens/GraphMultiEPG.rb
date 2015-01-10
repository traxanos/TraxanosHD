TraxanosHD::Screen.new(xml, :GraphMultiEPG, "EPG selection") do
  header
  main do
    title :Title
    box do
      position 0, 48 + TraxanosHD.spacer
      size nil, -(48 + TraxanosHD.spacer*2)
      graphepg
    end
  end

  main_accent do

    widget do
      position 0, 0
      size 356, 36
      nowrap 1
      transparent 1
      font "Regular", 24
      render "Label"
      source "Event"
      accent
      orientation :left, :center
      convert "StartTime", type: "EventTime"
      convert "Format:%A", type: "ClockToText"
    end

    widget do
      position 0, 0
      size 356, 36
      nowrap 1
      transparent 1
      font "Regular", 24
      render "Label"
      source "Event"
      accent
      orientation :right, :center
      convert "StartTime", type: "EventTime"
      convert "Format:%d.%m.%Y", type: "ClockToText"
    end

    widget do
      position 0, 180
      size 62, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "Label"
      source "Event"
      accent
      orientation :left, :center
      convert "StartTime", type: "EventTime"
      convert type: "ClockToText"
    end

    progressbar do
      position 67, 189
      size 220, 5
      transparent 1
      source "Event"
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
      source "Event"
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
      source "Event"
      accent
      convert "ExtendedDescription", type: "EventName"
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
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
