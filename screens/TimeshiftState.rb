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

  TraxanosHD::Screen.new(xml, :TimeshiftState, "TimeshiftState", $variant) do
    position 0, 0
    box do # border
      position TraxanosHD.border, TraxanosHD.border
      size TraxanosHD.inner_width, TraxanosHD.header_height
      width = 138

      clock

      label do
        size TraxanosHD.left_width, TraxanosHD.header_height
        background :transparent
        label do
          size width
          widget do
            size width
            name "state"
            font "Regular", 36
            nowrap 1
            orientation :center, :center
            transparent 1
          end
        end
      end
    end

    recinfo
    playerbar true
  end
end
