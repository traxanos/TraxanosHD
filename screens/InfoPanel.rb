TraxanosHD::Screen.new(xml, :InfoPanel, "VTI Panel") do
  header do
    header_title :title
  end

  main do
    template = '{
      "template": [
          MultiContentEntryText(pos = (0, 3), size = (261, 21), font=0, flags = RT_HALIGN_LEFT|RT_VALIGN_CENTER, text = 0),
          MultiContentEntryText(pos = (261, 3), size = (261, 21), font=0, flags = RT_HALIGN_LEFT|RT_VALIGN_CENTER, text = 1),
          MultiContentEntryText(pos = (522, 3), size = (51, 21), font=0, flags = RT_HALIGN_LEFT|RT_VALIGN_CENTER, text = 2),
          MultiContentEntryText(pos = (573, 3), size = (99, 21), font=0, flags = RT_HALIGN_RIGHT|RT_VALIGN_CENTER, text = 3),
          MultiContentEntryText(pos = (672, 3), size = (102, 21), font=0, flags = RT_HALIGN_RIGHT|RT_VALIGN_CENTER, text = 4),
      ],
      "fonts": [
        gFont("Share", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "selectionEnabled": True,
      "itemHeight": 27
    }'

    widget do
      position 0, 36 + 12 + (27 * 6) + TraxanosHD.spacer + 36 + 12
      size 774, 27 * 7
      render "Listbox"
      source "storagelist"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

    label do
      size 450, 36
      font "Share", 24
      nowrap 1
      orientation :left, :center
      transparent 1
      text "Prozesse"
    end

    template = '{
      "template": [
          MultiContentEntryText(pos = (0, 3), size = (230, 21), font=0, flags = RT_HALIGN_LEFT|RT_VALIGN_CENTER, text = 0),
          MultiContentEntryText(pos = (230, 3), size = (70, 21), font=0, flags = RT_HALIGN_RIGHT|RT_VALIGN_CENTER, text = 1),
          MultiContentEntryText(pos = (300, 3), size = (70, 21), font=0, flags = RT_HALIGN_RIGHT|RT_VALIGN_CENTER, text = 2),
          MultiContentEntryText(pos = (370, 3), size = (70, 21), font=0, flags = RT_HALIGN_RIGHT|RT_VALIGN_CENTER, text = 3),
      ],
      "fonts": [
        gFont("Share", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "selectionEnabled": False,
      "itemHeight": 27
    }'

    widget do
      position 0, 36 + 12
      size 450, 27 * 6
      render "Listbox"
      source "proclist"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

    label do
      position  -300, 0
      size 300, 36
      font "Share", 24
      nowrap 1
      orientation :right, :center
      transparent 1
      text "Arbeitsspeicher"
    end

    template = '{
      "template": [
          MultiContentEntryText(pos = (0, 3), size = (132, 21), font=0, flags = RT_HALIGN_LEFT|RT_VALIGN_CENTER, text = 0),
          MultiContentEntryText(pos = (132, 3), size = (84, 21), font=0, flags = RT_HALIGN_RIGHT|RT_VALIGN_CENTER, text = 1),
          MultiContentEntryText(pos = (216, 3), size = (84, 21), font=0, flags = RT_HALIGN_RIGHT|RT_VALIGN_CENTER, text = 2),
      ],
      "fonts": [
        gFont("Share", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "selectionEnabled": False,
      "itemHeight": 27
    }'

    widget do
      position -300, 36 + 12
      size 300, 27 * 4
      render "Listbox"
      source "memory"
      transparent 1
      enablewraparound 1
      scrollbars('showNever')
      convert template, type: "TemplatedMultiContent"
    end

    label do
      position 0, 36 + 12 + (27 * 6) + TraxanosHD.spacer
      size 774, 36
      font "Share", 24
      nowrap 1
      orientation :left, :center
      transparent 1
      text "Speicher"
    end
  end

  main_accent do

    label do
      position 0, 0
      size nil, 36
      font "Share", 24
      nowrap 1
      orientation :left, :center
      transparent 1
      text "System"
      accent
    end

    widget do
      position 0, 48
      size nil, 21
      name "vtiversion"
      transparent 1
      orientation :left, :top
      font "Share", TraxanosHD.default_right_font_size
    end

    widget do
      position 0, (33*1) + 48
      size nil, 21
      name "kernel"
      transparent 1
      orientation :left, :top
      font "Share", TraxanosHD.default_right_font_size
    end

    widget do
      position 0, (33*2) + 48
      size nil, 21
      name "uptime"
      transparent 1
      orientation :left, :top
      font "Share", TraxanosHD.default_right_font_size
    end

    widget do
      position 0, (33*3) + 48
      size nil, 21
      name "load"
      transparent 1
      orientation :left, :top
      font "Share", TraxanosHD.default_right_font_size
    end

    widget do
      position 0, (33*4) + 48
      size nil, 21
      name "temp"
      transparent 1
      orientation :left, :top
      font "Share", TraxanosHD.default_right_font_size
    end

    widget do
      position 0, (33*5) + 48
      size nil, 21
      name "fan"
      transparent 1
      orientation :left, :top
      font "Share", TraxanosHD.default_right_font_size
    end

    label do
      position 0, (33*6) + 48
      size nil, 36
      font "Share", 24
      nowrap 1
      orientation :left, :center
      transparent 1
      text "Netzwerk"
      accent
    end

    template = '{
      "template": [
           MultiContentEntryText(pos = (0, 3),   size = (98, 21),  font = 0, flags = RT_HALIGN_LEFT  | RT_VALIGN_CENTER, text = 0),
           MultiContentEntryText(pos = (98, 3),  size = (129, 21), font = 0, flags = RT_HALIGN_RIGHT | RT_VALIGN_CENTER, text = 1),
           MultiContentEntryText(pos = (227, 3), size = (129, 21), font = 0, flags = RT_HALIGN_RIGHT | RT_VALIGN_CENTER, text = 2),
      ],
      "fonts": [
        gFont("Share", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "selectionEnabled": False,
      "itemHeight": 27
    }'

    widget do
      position 0, (33*7) + 48 + 12
      size 356, 27 * 3
      render "Listbox"
      source "netdev"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end
  end

  colorbar do
    colorbar_buttons2(true, true)
  end
end