screen = TraxanosHD::Screen.new(:Mute, "Mute") do
  position TraxanosHD.border, TraxanosHD.border, 81
  width = 243 + 129
  size width, TraxanosHD.header_height

  label do
    size width

    label do
      size TraxanosHD.header_height
      text ""
      nowrap 1
      font "FontAwesome", 39
      orientation :center, :center
      transparent 1
    end

    label do
      size TraxanosHD.header_height
      text ""
      nowrap 1
      font "FontAwesome", 39
      orientation :center, :center
      transparent 1
    end

    label do
      position 255+24, 0
      size 87+6, TraxanosHD.header_height
      font "Regular", 40
      orientation :center, :center
      nowrap 1
      transparent 1
      text "0"
    end

    label do
      position 78, 34
      background :progressbarPrimaryBG
      size 195, 1
    end

  end
end

screen.render!(@main)
