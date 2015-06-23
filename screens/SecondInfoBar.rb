[nil, 'LogoLeft'].each do |variant|
  $variant = variant
  $side = (variant =~/LogoLeft/ ? :left : :right)

  case variant
  when 'LogoLeft'
    xml = @logoleft
  else
    xml = @main
  end

  TraxanosHD::Screen.new(xml, :SecondInfoBar, "SecondInfoBar", $variant) do
    position 0, 0
    header
    second_infobar_header
    infobar $side
  end
end
