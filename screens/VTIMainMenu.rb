TraxanosHD::Screen.new(xml, :VTIMainMenu, "VTI Panel") do
  header do
    header_title :title
  end

  main do
    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 0),  size = (668,33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_BOTTOM, text = 0),
        MultiContentEntryText(pos = (6, 36), size = (668,24), font = 1, flags = RT_HALIGN_LEFT, text = 2),
        MultiContentEntryPixmapAlphaTest(pos = (668, 5), size = (100, 50), png = 3),
      ],
      "fonts": [
        gFont("SegoeUI", 24),
        gFont("Regular", 16)
      ],
      "itemHeight": 60
    }'

    widget do
      size 774, 480
      render "Listbox"
      source "list"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end
