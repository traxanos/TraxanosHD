screen = TraxanosHD::Screen.new(xml, :EMCMediaCenter, "InfoBar") do
  position 0, 0
  header
  recinfo
  playerbar false, true
end

screen.render!
