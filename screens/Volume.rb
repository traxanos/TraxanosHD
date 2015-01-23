TraxanosHD::Screen.new(xml, :Volume, "Volume") do
  position TraxanosHD.border, TraxanosHD.border, 80
  width = 219 + 129
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
      position 255, 0
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
      background :foreground
      size 171, 1
    end


    widget do
      position 78, 32
      foreground :backgroundAccent
      size 171, 5
      name "Volume"
      transparent 1
    end
  end
end