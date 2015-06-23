TraxanosHD::Screen.new(@main, :RassInteractive) do
  position 39, 180
  size 100+(TraxanosHD.spacer*2), 300+(TraxanosHD.spacer*2)
  background :transpWhite

  box do
    position TraxanosHD.spacer, TraxanosHD.spacer
    size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

    pixmap do
      position 0, 0
      size 100, 43
      transparent 1
      image "TraxanosHD/images/rass_small.png"
      alphatest "on"
      foreground nil
    end

    label do
      position 35, 49
      size 60, 25
      text "Index"
      font "Regular", 21
      transparent 1
      background :transpWhite
      foreground :black
    end

    label do
      position 0, 49
      size 16, 25
      text "0"
      font "Regular", 21
      transparent 1
      background :transpWhite
      foreground :black
    end

    widget do
      position 20, 49
      size 16, 25
      name "Marker"
      font "Regular", 21
      transparent 1
      background :transpWhite
      foreground :black
    end

    9.times do |i|
      x = i + 1

      label do
        position 0, 49+(25*x)
        size 16, 25
        text "#{x}"
        font "Regular", 21
        transparent 1
        background :transpWhite
        foreground :black
      end

      widget do
        position 35, 49+(25*x)
        size 36, 20
        name "subpages_#{x}"
        alphatest "on"
        transparent 1
        background :transpWhite
        foreground nil
      end
    end
  end

end

