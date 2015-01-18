TraxanosHD::Screen.new(xml, :AllNews, "VTI News") do
  header do
    widget do
      position TraxanosHD.spacer, TraxanosHD.default_header_title_top_spacer
      size -(TraxanosHD.spacer*2), 48
      name "header"
      transparent 1
      font "SegoeUI", TraxanosHD.default_title_font_size
      nowrap 1
    end
  end

  main do

    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 6), size = (706, 48), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
        MultiContentEntryPixmapAlphaTest(pos = (711, 3), size = (48, 48), png = 2),
      ],
      "fonts": [
        gFont("SegoeUI", 28)
      ],
      "itemHeight": 54
    }'

    widget do
      size 774, 9*54
      source "menu"
      transparent 1
      render "Listbox"
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end
