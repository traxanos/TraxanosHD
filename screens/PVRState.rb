screen = TraxanosHD::Screen.new(xml, :PVRState) do
  position TraxanosHD.border, TraxanosHD.border, -9
  size TraxanosHD.left_width, TraxanosHD.header_height
  width = 138
  label do
    size TraxanosHD.left_width, TraxanosHD.header_height
    background :transparent
    label do
      size width
      widget do
        size width
        name "state"
        font "Regular", 36
        nowrap 1
        orientation :center, :center
        transparent 1
      end
    end
  end
end

screen.render!
