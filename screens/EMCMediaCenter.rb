screen = TraxanosHD::Screen.new(:EMCMediaCenter, "InfoBar") do
  position 0, 0
  header
  recinfo
  playerbar false, true
end

screen.render!(@main)
