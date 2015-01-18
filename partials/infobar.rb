class TraxanosHD::Element
  def infobar
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
          convert 'Reference', type: "ServiceName"
        end

        progressbar do
          position 0, 71
          size 943, 5
          source "session.Event_Now"
          foreground :backgroundAccent2
          transparent 1
          convert "Progress", type: "EventTime"
        end

        widget do
          position 0 + 3, 27 + 6
          size 726 - 3, 42
          render "Label"
          font "Share", 30
          nowrap 1
          orientation :left, :top
          source "session.Event_Now"
          transparent 1
          convert "Name", type: "EventName"
        end

        widget do
          position 730, 27 + 15
          size 51, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size
          orientation :right, :top
          nowrap 1
          source "session.Event_Now"
          transparent 1
          convert "StartTime", type: "EventTime"
          convert "Format:%H:%M", type: "ClockToText"
        end

        widget do
          position 781, 27 + 15
          size 66, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size
          orientation :left, :top
          nowrap 1
          source "session.Event_Now"
          transparent 1
          convert "EndTime", type: "EventTime"
          convert "Format: - %H:%M", type: "ClockToText"
        end

        widget do
          position 847, 27 + 15
          size 93, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size
          orientation :right, :top
          nowrap 1
          source "session.Event_Now"
          convert "Remaining", type: "EventTime"
          convert "InMinutes", type: "RemainingToText"
          transparent 1
        end

        widget do
          position 0 + 3, 51 + 27 + 6
          size 726 -3, 42
          render "Label"
          font "Share", 24
          orientation :left, :top
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "Name", type: "EventName"
        end

        widget do
          position 730, 51 + 27
          size 51, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size
          orientation :right, :top
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "StartTime", type: "EventTime"
          convert "Format:%H:%M", type: "ClockToText"
        end

        widget do
          position 781, 51 + 27
          size 66, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size
          orientation :left, :top
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "EndTime", type: "EventTime"
          convert "Format: - %H:%M", type: "ClockToText"
        end

        widget do
          position 847, 51 + 27
          size 93, 42
          render "Label"
          font "Regular", TraxanosHD.default_font_size
          orientation :right, :top
          nowrap 1
          source "session.Event_Next"
          convert "Remaining", type: "EventTime"
          convert "InMinutes", type: "RemainingToText"
          transparent 1
        end

      end
    end

  end
end
