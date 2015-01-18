TraxanosHD::Screen.new(xml, :DeviceManager2, "DeviceManager2") do
  header do
    header_title :title
  end

  main do
    template = '{
      "template": [
        MultiContentEntryPixmapAlphaTest(pos = (721, 21), size = (48, 48), png = 1),
        MultiContentEntryText(pos = (3,  3), size = (718, 24), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 2),
        MultiContentEntryText(pos = (3, 27), size = (718, 21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 3),
        MultiContentEntryText(pos = (3, 48), size = (718, 21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 4),
        MultiContentEntryText(pos = (3, 69), size = (718, 21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 5),
      ],
      "fonts": [
        gFont("Share", 24),
        gFont("Share", 20),
      ],
      "itemHeight": 90
    }'

    widget do
      size nil, 5*90
      render "Listbox"
      source "menu"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end
  end

  colorbar do
    widget do
      position 18-9
      size 198, 30
      render "Label"
      source "key_red"
      font "Share", TraxanosHD.default_font_size
      orientation :center, :center
      nowrap 1
      transparent 1
    end
    colorbar_buttons1(false, true, true, true)
  end
end
