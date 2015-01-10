TraxanosHD::Screen.new(xml, :AllNews, "VTI News") do
  header
  main do
    widget do
      size nil, 48
      name "header"
      transparent 1
      font "SegoeUI", 36
      orientation :left, :top
      nowrap 1
    end

    template = '{
      "template": [
        MultiContentEntryText(pos = (51, 0), size = (765, 48), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
        MultiContentEntryPixmapAlphaTest(pos = (0, 0), size = (48, 48), png = 2)
      ],
      "fonts": [
        gFont("SegoeUI", 28)
      ],
      "itemHeight": 48
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 408
      source "menu"
      transparent 1
      render "Listbox"
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end
