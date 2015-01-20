class TraxanosHD::Element
  def playerbar(timeshift = false)
    label do
      position 0, 573
      size 1280, 147

      label do
        position TraxanosHD.border, 0
        size -(TraxanosHD.border*2), 147

        widget do
          position -220, 6
          size 220, 132
          alphatest :blend
          render "Picon"
          foreground nil
          source "session.CurrentService"
          if timeshift
            convert 'Reference', type: "ServiceName"
          else
            convert 'Reference', type: "MovieBarInfo"
          end
        end

        progressbar do
          position 0, 71
          size 943, 5
          source "session.CurrentService"
          foreground :backgroundAccent
          convert "Position", type: "ServicePosition"
        end

        unless timeshift
          widget do
            position 0, 68
            size 943, 11
            render "PositionGauge"
            source "session.CurrentService"
            foreground nil
            background nil
            transparent 1
            convert "Gauge", type: "ServicePosition"
          end
        end

        widget do
          position 0 + 3, 27 + 6
          size 853 - 6, 42
          render "Label"
          font "Share", 30
          nowrap 1
          orientation :left, :top
          transparent 1
          if timeshift
            source "session.Event_Now"
            convert "Name", type: "EventName"
          else
            source "session.CurrentService"
            convert "Name", type: "ServiceName"
          end
        end

        widget do
          position 853, 27 + 14
          size 90 - 3, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :right, :top
          nowrap 1
          source "session.CurrentService"
          convert "Remaining", type: "ServicePosition"
          transparent 1
        end

        widget do
          position 3, 51 + 33
          size 943 - 6, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :left, :top
          nowrap 1
          source "session.CurrentService"
          transparent 1
          convert "Position", type: "ServicePosition"
        end

        widget do
          position 3, 51 + 33
          size 943 - 6, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :right, :top
          nowrap 1
          source "session.CurrentService"
          transparent 1
          convert "Length", type: "ServicePosition"
        end

      end
    end

  end
end

