TraxanosHD::Screen.new(xml, :NumberZapWithName, "Channel") do
  position :center, :center
  size 244+330, 156

  label do
    position 0, 0
    size 244, 156
  end

  widget do
    position 12, 12
    size 220, 132
    source "Service"
    render "Picon"
    alphatest "blend"
    transparent 1
    foreground nil
    convert "Reference", type: "ServiceName"
  end

  label do
    position 244, 6
    size 330, 144
    accent

    box do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

      widget do
        size nil, 36
        orientation :left, :center
        name "servicename"
        font "SegoeUI", 36
        transparent 1
        nowrap 1
      end

      widget do
        position 0, -60
        size nil, 60
        orientation :right, :center
        name "servicenumber"
        font "SegoeUI", 66
        transparent 1
        nowrap 1
      end

      widget do
        position 0, 36
        size nil, 24
        orientation :left, :center
        name "servicebouquet"
        font "SegoeUI", 20
        transparent 1
        nowrap 1
      end
    end
  end

end
