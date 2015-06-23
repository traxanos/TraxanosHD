screen = TraxanosHD::Screen.new(:EPGSelectionEPGBar_HD, "EPG selection") do
  header

  label do
    position 0, 459
    size 1280, 219

    widget do
      position 39, 12
      size 774, 42
      render "Label"
      font "Regular", 30
      orientation :left, :bottom
      nowrap 1
      source "Service"
      transparent 1
      convert "Name", type: "ServiceName"
    end

    widget do
      position 39, 54
      size 774, 108
      itemheight 27
      name "list"
      transparent 1
      scrollbars
    end
    # 852

    widget do
      position 852, 54
      size 398, 102
      transparent 1
      font "Regular", TraxanosHD.default_font_size-1
      render "VRunningText"
      config "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap"
      source "Event"
      convert "ExtendedDescription", type: "EventName"
    end

  end

  colorbar(21) do
    colorbar_buttons1(true, true, true, true)
  end

  box do
    position 852, 648
    size 398, 30

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

screen.render!(@main)
