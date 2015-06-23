TraxanosHD::Screen.new(@main, :EMCMediaCenter, "InfoBar") do
  position 0, 0
  header
  recinfo
  playerbar :right, false, true
end

TraxanosHD::Screen.new(@logoleft, :EMCMediaCenter, "InfoBar", "LogoLeft") do
  position 0, 0
  header
  recinfo
  playerbar :left, false, true
end

