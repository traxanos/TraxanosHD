TraxanosHD::Screen.new(xml, :PictureInPictureTest) do
  position -((TraxanosHD.width / 3)+ TraxanosHD.border), TraxanosHD.border+TraxanosHD.header_height+TraxanosHD.spacer
  size TraxanosHD.width / 3, TraxanosHD.height / 3
  widget do
    background :transparent
    name "video"
  end
  widget do
    background :transparent
    name "zap_focus"
    font "Share", 26
  end


end
