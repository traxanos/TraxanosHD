TraxanosHD::Screen.new(xml, :VTIMainMenu, "VTI Panel") do
  header
  main do
    title :title

    template = '{
      "template": [
        MultiContentEntryPixmapAlphaTest(pos = (6, 5), size = (100, 50), png = 3),
        MultiContentEntryText(pos = (120, 3),  size = (651, 33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0),
        MultiContentEntryText(pos = (120, 36), size = (651, 21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 2)
      ],
      "fonts": [
        gFont("SegoeUI", 24),
        gFont("Regular", 14),
      ],
      "itemHeight": 60
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 7*60
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
