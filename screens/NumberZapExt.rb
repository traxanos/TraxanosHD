TraxanosHD::Screen.new(xml, :NumberZapExt, "Channel") do
  position :center, :center
  size 280+330, 156

  label do
    position 0, 0
    size 280, 156
  end

  widget do
    position 30, 12
    size 220, 132
    name "chPicon"
    alphatest "blend"
    transparent 1
    foreground nil
  end

  label do
    position 280, 6
    size 330, 144
    accent

    box do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

      widget do
        size nil, 36
        orientation :left, :center
        name "chName"
        font "Regular", 36
        transparent 1
        nowrap 1
        accent
      end

      widget do
        position 0, -60
        size nil, 60
        orientation :right, :center
        name "chNum"
        font "Regular", 66
        transparent 1
        nowrap 1
        accent
      end

      widget do
        position 0, 36
        size nil, 24
        orientation :left, :center
        name "chBouq"
        font "Regular", TraxanosHD.default_font_size
        transparent 1
        nowrap 1
        accent
      end
    end
  end

end
