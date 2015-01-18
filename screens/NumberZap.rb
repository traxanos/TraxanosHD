TraxanosHD::Screen.new(xml, :NumberZap, "Channel") do
  position :center, :center
  size 360, 168+12
  label do
    size 360, 168+12

    widget do
      position TraxanosHD.spacer, -(81 + TraxanosHD.spacer)
      size -(TraxanosHD.spacer*2), 81
      orientation :right, :bottom
      name "servicenumber"
      font "Share", 66
      transparent 1
      nowrap 1
    end

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), 42
      orientation :left, :top
      name "servicename"
      font "Share", 36
      transparent 1
      nowrap 1
    end

  end

end
