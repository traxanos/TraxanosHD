TraxanosHD::Screen.new(xml, :TimerEditList, "Timer Editor") do
  header do
    header_title "Timer Editor"
  end

  main do
    widget do
      size nil, 480
      name "timerlist"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

  main_accent do
    label do
      position 0, 0
      size 220+67+67, 132+24
      background :logobg
    end

    widget do
      position 67, 12
      size 220, 132
      render "Picon"
      source "ServiceEvent"
      alphatest "blend"
      accent
      convert "Reference", type: "ServiceName"
      foreground nil
    end

    widget do
      position 0, 150+24
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

    widget do
      position -62, 150+24
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
      position 0, 192+24
      size nil, 279-24
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
      text "EPG"
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end
end
