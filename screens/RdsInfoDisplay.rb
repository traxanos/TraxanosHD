TraxanosHD::Screen.new(xml, :RdsInfoDisplay) do
  position 0, 0, -2

  widget do
    position TraxanosHD.border, -(TraxanosHD.border + 42 + 12 + 60)
    size 140, 60
    name "RassLogo"
    image "TraxanosHD/images/rass.png"
    foreground nil
    background nil
  end

  widget do
    position TraxanosHD.border, -(TraxanosHD.border + 42)
    size 1202, 42
    name "RtpText"
    font "SegoeUI", 30
    orientation :left, :center
    nowrap 1
    shadow :shadow
    shadowoffset -2, -2
  end

  widget do
    position TraxanosHD.border, -(TraxanosHD.border + 42)
    size 1202, 42
    name "RadioText"
    font "SegoeUI", 30
    orientation :left, :center
    nowrap 1
    shadow :shadow
    shadowoffset -2, -2
  end

end
