TraxanosHD::Screen.new(xml, :DeviceManager2Message, "Message") do

  position :center, :center, 1
  size 900, 522
  background :background

  widget do
    position 90, 12
    size 798, 66
    font "SegoeUI", 36
    name "messagetype"
    orientation nil, :center
  end

  widget do
    position 12, 12
    size 66, 66
    images "TraxanosHD/images/input_info.png,TraxanosHD/images/input_error.png,TraxanosHD/images/input_question.png"
    transparent 1
    foreground nil
    name "messagepic"
    alphatest "on"
  end

  widget do
    position 12, 90
    size 876, 420
    font "Regular", TraxanosHD.default_left_font_size
    name "messagetext"
    orientation :center, :top
  end

end