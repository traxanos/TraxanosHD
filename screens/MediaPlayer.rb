TraxanosHD::Screen.new(xml, :MediaPlayer, "MediaPlayer") do
  position 0, 0

  # pixmap do
  #   position 0, 0, -20
  #   image "TraxanosHD/mpbg.png"
  # end

  header do
    header_title "Media Player"
  end

  main(true, 375+39) do
    position TraxanosHD.spacer, TraxanosHD.spacer
    size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

    width = (1164-18)/2

    label do
      position 0, 0
      size width, 24
      text "Browser"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
    end

    widget do
      position 0, 24+12
      size width, 25*13
      name "filelist"
      enablewraparound 1
      itemheight 25
      scrollbars
      transparent 1
    end

    label do
      position width+18, 0
      size width, 24
      text "Playlist"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
    end

    widget do
      position width+18, 24+12
      size width, 25*13
      name "playlist"
      selectiondisabled 1
      enablewraparound 1
      itemheight 25
      scrollbars
      transparent 1
    end
  end

  # main_accent(375-6+39) do
  # end

  label do
    position 0, 573
    size 1280, 147

    label do
      position TraxanosHD.border, 0
      size -(TraxanosHD.border*2), 147

      progressbar do
        position 0, 71, 10
        size 1068, 5
        source "session.CurrentService"
        convert "Position", type: "ServicePosition"
      end

      widget do
        position 0, 71, 14
        size 1068, 5
        render "PositionGauge"
        foreground nil
        background nil
        transparent 1
        source "session.CurrentService"
        convert "Gauge", type: "ServicePosition"
      end

      widget do
        position 3, 24
        size 980, 39
        font "Regular", 30
        nowrap 1
        orientation :left, :top
        name "title"
        transparent 1
      end

      widget do
        position 3, 39
        size 980, 21
        font "Regular", TraxanosHD.default_font_size-2
        nowrap 1
        orientation :right, :top
        name "year"
        transparent 1
      end

      widget do
        position 980+12, 39
        size 76-3, 21
        font "Regular", TraxanosHD.default_font_size-2
        nowrap 1
        orientation :right, :top
        transparent 1
        source "session.CurrentService"
        render "Label"
        convert "Position", type: "ServicePosition"
      end


      widget do
        position 4, 51 + 36
        size 980, 36
        font "Regular", 24
        orientation :left, :top
        nowrap 1
        name "artist"
        transparent 1
      end

      widget do
        position 4, 51 + 36
        size 980, 21
        font "Regular", TraxanosHD.default_font_size-2
        orientation :right, :top
        nowrap 1
        name "album"
        transparent 1
      end

      widget do
        position 980+12, 51 + 36
        size 76-3, 21
        font "Regular", TraxanosHD.default_font_size-2
        nowrap 1
        orientation :right, :top
        transparent 1
        source "session.CurrentService"
        render "Label"
        convert "Length", type: "ServicePosition"
      end

      widget do
        position -116, (147-116)/2
        size 116, 116
        image "skin_default/no_coverArt.png"
        name "coverArt"
        transparent 1
        alphatest "blend"
        foreground nil
      end

    end
  end

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 519
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      position -72
      size 72, 30
      text "MENU"
      font "Regular", TraxanosHD.default_font_size-2
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end
end
