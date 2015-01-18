TraxanosHD::Screen.new(xml, :GraphMultiEPG2, "EPG selection") do
  label do
    position TraxanosHD.border, TraxanosHD.border
    size -(TraxanosHD.border*2), -(TraxanosHD.border*2)
    box do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

      widget do
        size nil, 36
        transparent 1
        font "Regular", 26
        orientation :left, :top
        nowrap 1
        source "Title"
        render "Label"
      end

      widget do
        size nil, 36
        transparent 1
        font "Regular", 26
        orientation :right, :bottom
        nowrap 1
        source "Event"
        render "Label"
        convert "StartTime", type: "EventTime"
        convert "Format:%d.%m.%Y", type: "ClockToText"
      end

      label do
        position 0, 36 + TraxanosHD.spacer
        size nil, -(36 + TraxanosHD.spacer + 24 + TraxanosHD.spacer*3)
        graphepg
      end

      widget do
        position 0, -78
        size nil, 53
        transparent 0
        text "asdkjahsdkajsh"
        font "Regular", TraxanosHD.default_font_size
        orientation :left, :top
        nowrap 1
        source "Event"
        render "Label"
        convert "ExtendedDescription", type: "EventName"
      end
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645+6
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      position -72
      size 72, 30
      text "MENU"
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end
end