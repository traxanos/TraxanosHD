screen = TraxanosHD::Screen.new(:InfoBar, "InfoBar") do
  position 0, 0
  header
  recinfo
  infobar
end

screen.render!(@main)
screen.render!(@logoleft, 'LogoLeft')
