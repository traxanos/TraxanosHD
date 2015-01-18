class TraxanosHD::Element
  def weather

    parent.widget do
      position 0, 0
      size 0, 0
      render "VWeatherUpdater"
      source "global.CurrentTime"
    end

    box do # left header
      position 0, 0
      size TraxanosHD.left_width, TraxanosHD.header_height

      left = 73 * TraxanosHD.grid
      right = 43 * TraxanosHD.grid

      label do
        # left
        position 0, 0
        size left

        widget do
          size 79
          font "Share", 50
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "currentWeatherTemp", type: "VWeather"
        end

        widget do
          position 79, 6
          size 24, 24
          font "Share", 22
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "CF", type: "VWeather"
        end

        widget do
          position 79 + 24
          size TraxanosHD.header_height
          font "Meteocons", 51
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
          font "Share", TraxanosHD.default_font_size
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
          font "Share", TraxanosHD.default_font_size
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
          position 9, 6
          size 51, 51
          font "Meteocons", 48
          render "Label"
          orientation :center, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTomorrowCode", type: "VWeather"
          accent2
        end

        widget do
          position 60, 6
          size 60, 24
          font "Share", TraxanosHD.default_font_size
          render "Label"
          orientation :right, :center
          nowrap 1
          transparent 1
          source "session.CurrentService"
          convert "forecastTomorrowTempMax", type: "VWeather"
          accent2
        end

        widget do
          position 60, 3 + 24 + 6
          size 60, 24
          font "Share", TraxanosHD.default_font_size
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
