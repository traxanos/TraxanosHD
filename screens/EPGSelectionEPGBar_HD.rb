TraxanosHD::Screen.new(xml, :EPGSelectionEPGBar_HD, "EPG selection") do
  header

  label do
    position 0, 459
    size 1280, 219

    widget do
      position 39, 12
      size 940, 42
      render "Label"
      font "SegoeUI", 30
      orientation :left, :bottom
      nowrap 1
      source "Service"
      transparent 1
      convert "Name", type: "ServiceName"
    end

    progressbar do
      position 1021, 153
      size 220, 5
      source "Event"
      foreground :backgroundAccent
      transparent 1
      convert "Progress", type: "EventTime"
    end

    widget do
      position 1021, 9
      size 220, 132
      render "Picon"
      source "Service"
      transparent 1
      alphatest "blend"
      convert "Reference", type: "ServiceName"
      foreground nil
    end

    widget do
      position 39, 54
      size 940, 108
      itemheight 27
      name "list"
      transparent 1
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end
