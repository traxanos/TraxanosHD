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
          position 0, 27
          size 732, 42
          render "Label"
          font "Regular", 30
          nowrap 1
          orientation :left, :center
          source "session.Event_Now"
          transparent 1
          convert "Name", type: "EventName"
        end

        widget do
          position 736, 27
          size 51, 42
          render "Label"
          font "Regular", 18
          orientation :right, :center
          nowrap 1
          source "session.Event_Now"
          transparent 1
          convert "StartTime", type: "EventTime"
          convert "Format:%H:%M", type: "ClockToText"
        end

        widget do
          position 787, 27
          size 66, 42
          render "Label"
          font "Regular", 18
          orientation :left, :center
          nowrap 1
          source "session.Event_Now"
          transparent 1
          convert "EndTime", type: "EventTime"
          convert "Format: - %H:%M", type: "ClockToText"
        end

        widget do
          position 853, 27
          size 90, 42
          render "Label"
          font "Regular", 18
          orientation :right, :center
          nowrap 1
          source "session.Event_Now"
          convert "Remaining", type: "EventTime"
          convert "InMinutes", type: "RemainingToText"
          transparent 1
        end

        widget do
          position 0, 51 + 27
          size 732, 42
          render "Label"
          font "Regular", 22
          orientation :left, :center
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "Name", type: "EventName"
        end

        widget do
          position 736, 51 + 27
          size 51, 42
          render "Label"
          font "Regular", 18
          orientation :right, :center
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "StartTime", type: "EventTime"
          convert "Format:%H:%M", type: "ClockToText"
        end

        widget do
          position 787, 51 + 27
          size 66, 42
          render "Label"
          font "Regular", 18
          orientation :left, :center
          nowrap 1
          source "session.Event_Next"
          transparent 1
          convert "EndTime", type: "EventTime"
          convert "Format: - %H:%M", type: "ClockToText"
        end

        widget do
          position 853, 51 + 27
          size 90, 42
          render "Label"
          font "Regular", 18
          orientation :right, :center
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
