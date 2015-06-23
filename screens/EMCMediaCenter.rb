[nil, 'LogoLeft'].each do |variant|
  $variant = variant
  $side = (variant =~/LogoLeft/ ? :left : :right)

  case variant
  when 'LogoLeft'
    xml = @logoleft
  else
    xml = @main
  end

  TraxanosHD::Screen.new(xml, :EMCMediaCenter, "InfoBar", $variant) do
    position 0, 0
    header
    recinfo
    playerbar $side, false, true
  end
end
