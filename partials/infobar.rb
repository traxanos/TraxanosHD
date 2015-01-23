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
          position 0 + 3, 24
          size 726 - 18, 39
          render "Label"
          font "Regular", 30
          nowrap 1
          orientation :left, :top
          source "session.Event_Now"
          transparent 1
          convert "Name", type: "EventName"
        end

        widget do
          position 730, 39
          size 51, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :right, :top
          nowrap 1
          source "session.Event_Now"
          transparent 1
          convert "StartTime", type: "EventTime"
          convert "Format:%H:%M", type: "ClockToText"
        end

        widget do
          position 781, 39
          size 66, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :left, :top
          nowrap 1
          source "session.Event_Now"
          transparent 1
          convert "EndTime", type: "EventTime"
          convert "Format: - %H:%M", type: "ClockToText"
        end

        widget do
          position 847, 39
          size 93, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :right, :top
          nowrap 1
          source "session.Event_Now"
          convert "Remaining", type: "EventTime"
          convert "InMinutes", type: "RemainingToText"
          transparent 1
        end

        widget do
          # + 1 font size bug
          position 3 + 1, 51 + 36
          size 726 - 18, 36
          render "Label"
          font "Regular", 24
          orientation :left, :top
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "Name", type: "EventName"
        end

        widget do
          position 730, 51 + 36
          size 51, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :right, :top
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "StartTime", type: "EventTime"
          convert "Format:%H:%M", type: "ClockToText"
        end

        widget do
          position 781, 51 + 36
          size 66, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :left, :top
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "EndTime", type: "EventTime"
          convert "Format: - %H:%M", type: "ClockToText"
        end

        widget do
          position 847, 51 + 36
          size 93, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
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
