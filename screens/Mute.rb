TraxanosHD::Screen.new(xml, :Mute, "Mute") do
  position TraxanosHD.border, TraxanosHD.border, 81
  size TraxanosHD.left_width, TraxanosHD.header_height

  label do
    background :transparent

    label do
      size TraxanosHD.header_height

      label do
        size TraxanosHD.header_height
        text ""
        nowrap 1
        font "FontAwesome", 39
        orientation :center, :center
        transparent 1
      end

      label do
        size TraxanosHD.header_height
        text ""
        nowrap 1
        font "FontAwesome", 39
        orientation :center, :center
        transparent 1
      end
    end

  end

end