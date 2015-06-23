TraxanosHD::Screen.new(@main, :SecondInfoBar, "SecondInfoBar") do
  position 0, 0
  header
  second_infobar_header
  infobar
end

TraxanosHD::Screen.new(@logoleft, :SecondInfoBar, "SecondInfoBar", 'LogoLeft') do
  position 0, 0
  header
  second_infobar_header
  infobar(:left)
end
