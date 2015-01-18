TraxanosHD::Screen.new(xml, :EPGSelection, "EPG selection") do
  header do
    header_title "EPG Selection"
  end

  main do
    widget do
      size nil, 30*16
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
    label do
      position 0, 0
      size 220+67+67, 132+24
      background :logobg
    end

    widget do
      position 67, 12
      size 220, 132
      render "Picon"
      source "Service"
      alphatest "blend"
      accent
      convert "Reference", type: "ServiceName"
      foreground nil
    end

    widget do
      position 0, 150+24
      size nil, 24
      nowrap 1
      transparent 1
      font "Bold", TraxanosHD.default_right_font_size
      render "Label"
      source "Service"
      accent
      orientation :left, :center
      convert "Name", type: "EventName"
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

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      position -66
      size 66, 30
      text "EPG"
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end

    label do
      position -(66 + 30 + TraxanosHD.spacer)
      size 30, 30
      text ">"
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end

    label do
      position -(66 + 30 + TraxanosHD.spacer + 30 + TraxanosHD.spacer)
      size 30, 30
      text "<"
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end

end

