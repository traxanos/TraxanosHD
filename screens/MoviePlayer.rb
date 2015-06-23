screen = TraxanosHD::Screen.new(:MoviePlayer, "InfoBar") do
  position 0, 0
  header
  recinfo
  playerbar
end

screen.render!(@main)
