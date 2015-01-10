TraxanosHD::Screen.new(xml, :EPGSelection, "EPG selection") do
  header
  main do
    title "EPG Selection"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
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
      position 67, 30
      size 220, 132
      render "Picon"
      source "Service"
      alphatest "blend"
      accent
      convert "Reference", type: "ServiceName"
      foreground nil
    end

    widget do
      position 0, 180
      size nil, 24
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "Label"
      source "Service"
      accent
      orientation :left, :center
      convert "Name", type: "ServiceName"
    end

    widget do
      position 0, 222
      size nil, 276
      nowrap 1
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "VRunningText"
      config "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap"
      source "Event"
      accent
      convert "ExtendedDescription", type: "EventName"
    end

  end

end

