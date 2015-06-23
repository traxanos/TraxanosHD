TraxanosHD::Screen.new(@main, :Volume, "Volume") do
  position TraxanosHD.border, TraxanosHD.border, 80
  width = 243 + 129
  size width, TraxanosHD.header_height


  label do
    size width

    label do
      size TraxanosHD.header_height
      text ""
      font "FontAwesome", 39
      nowrap 1
      orientation :center, :center
      transparent 1
    end

    widget do
      position 255+24, 0
      size 87+6, TraxanosHD.header_height
      font "Regular", 40
      render "VVolumeText"
      source "global.CurrentTime"
      orientation :center, :center
      nowrap 1
      transparent 1
    end

    label do
      position 78, 34
      background :progressbarPrimaryBG
      size 195, 1
    end


    widget do
      position 78, 32
      foreground :progressbarPrimaryFG
      size 195, 5
      name "Volume"
      transparent 1
    end
  end
end

