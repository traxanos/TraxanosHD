TraxanosHD::Screen.new(@main, :NumberZap, "Channel") do
  position :center, :center
  size 360, 168+12
  label do
    size 360, 168+12

    widget do
      position TraxanosHD.spacer, -(81 + TraxanosHD.spacer)
      size -(TraxanosHD.spacer*2), 81
      orientation :right, :bottom
      name "servicenumber"
      font "Regular", 66
      transparent 1
      nowrap 1
      accent
    end

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), 42
      orientation :left, :top
      name "servicename"
      font "Regular", 36
      transparent 1
      nowrap 1
      accent
    end

  end

end

