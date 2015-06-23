screen = TraxanosHD::Screen.new(xml, :InfoBarZapHistory) do
  label do
    position 0, 435
    size 1280, 246

    widget do
      position 701, 18
      size 540, 180
      itemheight 30
      name "ZapHistoryList"
      transparent 1
      scrollbars
    end

    widget do
      position 39, 18
      size 644, 42
      font "Regular", 30
      render "Label"
      source "ServiceEvent"
      nowrap 1
      orientation :left, :center
      transparent 1
      convert "Name", type: "EventName"
    end

    label do
      position 39, 18+42+12
      size 644, 24

      widget do
        position 0, 0
        size 62, 24
        nowrap 1
        transparent 1
        font "Regular", TraxanosHD.default_font_size-1
        render "Label"
        source "ServiceEvent"
        orientation :left, :center
        convert "StartTime", type: "EventTime"
        convert type: "ClockToText"
      end

      progressbar do
        position 67, 9
        size 510, 5
        transparent 1
        source "ServiceEvent"
        secondary
        convert "Progress", type: "EventTime"
      end

      widget do
        position -62, 0
        size 62, 24
        nowrap 1
        transparent 1
        font "Regular", TraxanosHD.default_font_size-1
        render "Label"
        source "ServiceEvent"
        orientation :right, :center
        convert "EndTime", type: "EventTime"
        convert type: "ClockToText"
      end

    end

    widget do
      position 39, 18+24+12+42+12
      size 644, 126
      font "Regular", TraxanosHD.default_font_size-1
      render "VRunningText"
      source "ServiceEvent"
      config "movetype=running,startpoint=0,direction=top,steptime=120,repeat=2,always=0,startdelay=5000,wrap"
      orientation :left, :top
      transparent 1
      convert "ExtendedDescription", type: "EventName"
    end

    label do
      position -(66+39), -30
      size 66, 30
      text "EPG"
      font "Regular", TraxanosHD.default_font_size
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end

  end
end

screen.render!
