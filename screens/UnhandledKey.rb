screen = TraxanosHD::Screen.new(:UnhandledKey, "UnhandledKey") do
  position TraxanosHD.border, TraxanosHD.border, 11
  size TraxanosHD.header_height, TraxanosHD.header_height

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
  end
end

screen.render!(@main)
