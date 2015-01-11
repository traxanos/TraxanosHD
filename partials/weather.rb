class TraxanosHD::Element
  def weather

    widget do
      position 0, 0
      size 0, 0
      render "VWeatherUpdater"
      source "global.CurrentTime"
    end

    box do # left header
      position 0, 0
      size TraxanosHD.left_width, TraxanosHD.header_height

      left = 72 * TraxanosHD.grid
      right = 36 * TraxanosHD.grid

      label do
        # left
        position 0, 0
        size left

        widget do
          position 0, 0
          size 75
          font "SegoeUI", 55
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "currentWeatherTemp", type: "VWeather"
        end

        widget do
          position 72, 6
          size 24, 24
          font "Regular", 17
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "CF", type: "VWeather"
        end

        widget do
          position 75 + 9 + 24, 6
          size 57, 57
          font "Meteocons", 48
          render "Label"
          orientation :center, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTodayCode", type: "VWeather"
        end

        widget do
          position 75 + 6 + 24 + 57 + 9, 9
          size 39, 24
          font "Regular", 16
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTodayTempMax", type: "VWeather"
        end

        widget do
          position 75 + 6 + 24 + 57 + 9, 9 + 24 + 3
          size 39, 24
          font "Regular", 16
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTodayTempMin", type: "VWeather"
        end
      end

      label do
        # right
        position left, 3
        size right, -6
        accent2

        widget do
          position 6, 6
          size 51, 51
          font "Meteocons", 45
          render "Label"
          orientation :center, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTomorrowCode", type: "VWeather"
          accent2
        end

        widget do
          position -(39+6), 6
          size 39, 24
          font "Regular", 16
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTomorrowTempMax", type: "VWeather"
          accent2
        end

        widget do
          position -(39+6), 3 + 24 + 6
          size 39, 24
          font "Regular", 16
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTomorrowTempMin", type: "VWeather"
          accent2
        end

      end
    end
  end
end
