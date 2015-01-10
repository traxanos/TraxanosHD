TraxanosHD::Screen.new(xml, :MyPluginManager, "VTI SoftwareManager") do
  header
  main do
    title :title

    template = '{
      "template": [
        MultiContentEntryText(pos = (60, 0), size = (640,33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_TOP, text = 0),
        MultiContentEntryText(pos = (60, 33), size = (640,21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_BOTTOM, text = 2),
        MultiContentEntryPixmapAlphaTest(pos = (3, 3), size = (48, 48), png = 4),
      ],
      "fonts": [
        gFont("SegoeUI", 24),
        gFont("Regular", 14),
      ],
      "itemHeight": 54
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 54*7
      render "Listbox"
      source "list"
      transparent 1
      enablewraparound 1
      scrollbars("showNever")
      convert template, type: "TemplatedMultiContent"
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true)
  end
end
