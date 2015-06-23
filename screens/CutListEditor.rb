TraxanosHD::Screen.new(@main, :CutListEditor, "Cutlist editor") do

  pixmap do
    position 0, 0, -20
    image "TraxanosHD/mpbg.png"
  end

  header do
    header_title :Title
  end


  main(true, 375+39) do
    position TraxanosHD.spacer, TraxanosHD.spacer
    size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)
    transparent 0

    widget do
      size 700, 378
      name "Video"
      background "#FF000000"
    end

    template = '{
      "template": [
        MultiContentEntryText(pos = (0, 0), size = (329, 30), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1 ),
        MultiContentEntryText(pos = (329, 0), size = (120, 30), font = 0, flags = RT_HALIGN_RIGHT | RT_VALIGN_CENTER, text = 2 ),
      ],
      "fonts": [
        gFont("Regular", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "itemHeight": 30
    }'

    widget do
      position -445
      size 445, 360
      source "cutlist"
      render "Listbox"
      convert template, type: "TemplatedMultiContent"
    end
  end

  label do
    position 0, 573
    size 1280, 147
    transparent 0

    label do
      position TraxanosHD.border, 0
      size -(TraxanosHD.border*2), 147

      widget do
        position 3, 24
        size 1202-6, 39
        font "Regular", 30
        nowrap 1
        orientation :left, :top
        render "Label"
        source "session.CurrentService"
        transparent 1
        convert "Name", type: "ServiceName"
      end

      widget do
        position 3, 39
        size 1202-6, 21
        font "Regular", TraxanosHD.default_font_size-2
        nowrap 1
        orientation :right, :top
        render "Label"
        source "session.CurrentService"
        transparent 1
        convert "Position,Detailed", type: "ServicePosition"
      end

      widget do
        position 0, 71, 10
        size nil, 15
        name "Timeline"
        custom "pointer", "skin_default/position_arrow.png:3,5"
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

