class TraxanosHD::Element
  def playerbar(side, timeshift = false, emc = false)
    label do
      position 0, 573
      size 1280, 147

      label do
        position TraxanosHD.border, 0
        size -(TraxanosHD.border*2), 147

        widget do
          if side == :left
            position 0, 6
          else
            position -220, 6
          end
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

        if side == :left
          base = 220 + 36 + 3
        else
          base = 0
        end

        progressbar do
          position base, 71
          size 943, 5
          source "#{emc ? '' : 'session.Current'}Service"
          convert "Position", type: "#{emc ? 'EMC' : ''}ServicePosition"
        end

        unless timeshift
          widget do
            position base, 68
            size 943, 11
            render "PositionGauge"
            foreground nil
            background nil
            transparent 1
            source "#{emc ? '' : 'session.Current'}Service"
            convert "Gauge", type: "#{emc ? 'EMC' : ''}ServicePosition"
          end
        end

        widget do
          position base + 3, 24
          size 853 - 6, 39
          render "Label"
          font "Regular", 30
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
          position base + 853, 39
          size 90 - 3, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :right, :top
          nowrap 1
          source "#{emc ? '' : 'session.Current'}Service"
          convert "Remaining", type: "#{emc ? 'EMC' : ''}ServicePosition"
          transparent 1
        end

        widget do
          position base + 3, 51 + 36
          size 200, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :left, :top
          nowrap 1
          transparent 1
          source "#{emc ? '' : 'session.Current'}Service"
          convert "Position", type: "#{emc ? 'EMC' : ''}ServicePosition"
        end

        widget do
          # + 1 font size bug
          position base + 943 - 3 - 200, 51 + 36
          size 200, 21
          render "Label"
          font "Regular", TraxanosHD.default_font_size-2
          orientation :right, :top
          nowrap 1
          transparent 1
          source "#{emc ? '' : 'session.Current'}Service"
          convert "Length", type: "#{emc ? 'EMC' : ''}ServicePosition"
        end

      end
    end

  end
end

