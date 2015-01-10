TraxanosHD::Screen.new(xml, :NumberZapExt, "Channel") do
  position :center, :center
  size 340+256, 168+12
  label do
    size 340, 168+12

    widget do
      position TraxanosHD.spacer, -(81 + TraxanosHD.spacer)
      size -(TraxanosHD.spacer*2), 81
      orientation :right, :bottom
      name "chNum"
      font "SegoeUI", 66
      transparent 1
      nowrap 1
    end

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), 42
      orientation :left, :top
      name "chName"
      font "SegoeUI", 36
      transparent 1
      nowrap 1
    end

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer+42
      size -(TraxanosHD.spacer*2), 42
      orientation :left, :top
      name "chBouq"
      font "SegoeUI", 20
      transparent 1
      nowrap 1
    end

  end

  label do
    position 340, 6
    size 256, 168
    accent
    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size 220, 132
      name "chPicon"
      alphatest "blend"
      transparent 1
    end
  end

end
