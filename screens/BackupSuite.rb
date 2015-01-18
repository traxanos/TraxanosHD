TraxanosHD::Screen.new(xml, :BackupSuite, "VTI BackupSuite") do
  header do
    header_title :Title
  end

  main do

    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 0),  size = (705,33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_BOTTOM, text = 1),
        MultiContentEntryText(pos = (6, 36), size = (705,24), font = 1, flags = RT_HALIGN_LEFT, text = 2),
        MultiContentEntryPixmapAlphaTest(pos = (711, 8), size = (44, 44), png = 3),
      ],
      "fonts": [
        gFont("Regular", 24),
        gFont("Regular", 16)
      ],
      "itemHeight": 60
    }'

    widget do
      size 774, 480
      render "Listbox"
      source "menu"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true)
  end
end
