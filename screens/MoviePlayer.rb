TraxanosHD::Screen.new(@main, :MoviePlayer, "InfoBar") do
  position 0, 0
  header
  recinfo
  playerbar :right
end

TraxanosHD::Screen.new(@logoleft, :MoviePlayer, "InfoBar", "LogoLeft") do
  position 0, 0
  header
  recinfo
  playerbar :left
end

