TraxanosHD::Screen.new(xml, :NumberZapWithName, "Channel") do
  position :center, :center
  size 360+256, 168+12
  label do
    size 360, 168+12

    widget do
      position TraxanosHD.spacer, -(81 + TraxanosHD.spacer)
      size -(TraxanosHD.spacer*2), 81
      orientation :right, :bottom
      name "servicenumber"
      font "SegoeUI", 66
      transparent 1
      nowrap 1
    end

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), 42
      orientation :left, :top
      name "servicename"
      font "SegoeUI", 36
      transparent 1
      nowrap 1
    end

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer+42
      size -(TraxanosHD.spacer*2), 42
      orientation :left, :top
      name "servicebouquet"
      font "SegoeUI", 20
      transparent 1
      nowrap 1
    end

  end

  label do
    position 360, 6
    size 256, 168
    accent
    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size 220, 132
      source "Service"
      render "Picon"
      alphatest "blend"
      transparent 1
      foreground nil
      convert "Reference", type: "ServiceName"
    end
  end

end
