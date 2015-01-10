TraxanosHD::Screen.new(xml, :TimerEditList, "Timer Editor") do
  header
  main do
    title "Timer Editor"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, -(48 + 3 + TraxanosHD.spacer*2)
      name "timerlist"
      transparent 1
      enablewraparound 1
      scrollbars
    end

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
      source "Event"
      accent
      orientation :left, :center
      convert "StartTime", type: "EventTime"
      convert type: "ClockToText"
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
end
