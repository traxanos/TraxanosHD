TraxanosHD::Screen.new(xml, :VTISubMenu, "VTI Sub Menu") do
  header
  main do
    title :title

    template = '{
      "template": [
        MultiContentEntryPixmapAlphaTest(pos = (6, 5), size = (44, 44), png = 3),
        MultiContentEntryText(pos = (56, 0), size = (715, 33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
        MultiContentEntryText(pos = (56, 33), size = (715, 21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 2)
      ],
      "fonts": [
        gFont("SegoeUI", 24),
        gFont("Regular", 14),
      ],
      "itemHeight": 54
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 54*8
      render "Listbox"
      source "list"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end
end
