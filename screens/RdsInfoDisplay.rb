TraxanosHD::Screen.new(xml, :RdsInfoDisplay) do
  position 0, 0, -10

  widget do
    position 39, 639
    size 1202, 42
    name "RtpText"
    font "SegoeUI", 30
    orientation :left, :center
    nowrap 1
    shadow :shadow
    shadowoffset -2, -2
  end

  widget do
    position 39, 639
    size 1202, 42
    name "RadioText"
    font "SegoeUI", 30
    orientation :left, :center
    nowrap 1
    shadow :shadow
    shadowoffset -2, -2
  end

end
