TraxanosHD::Screen.new(@main, :InfoBar, "InfoBar") do
  position 0, 0
  header
  recinfo
  infobar :right
end

TraxanosHD::Screen.new(@logoleft, :InfoBar, "InfoBar", 'LogoLeft') do
  position 0, 0
  header
  recinfo
  infobar :left
end
