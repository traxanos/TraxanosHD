[nil, 'LogoLeft', 'NoWeather'].each do |variant|
  variant = variant
  $logoleft = (variant =~/LogoLeft/ ? :left : :right)
  $noweather = (variant =~/NoWeather/ ? true : false)

  case variant
  when 'LogoLeft'
    xml = @logoleft
  when 'NoWeather'
    xml = @noweather
  else
    xml = @main
  end

  TraxanosHD::Screen.new(xml, :MoviePlayer, "InfoBar", $variant) do
    position 0, 0
    header
    recinfo
    playerbar
  end
end
