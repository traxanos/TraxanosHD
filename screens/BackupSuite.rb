TraxanosHD::Screen.new(@main, :BackupSuite, "VTI BackupSuite") do
  header do
    header_title :Title
  end

  main do

    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 6),  size = (705,27), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER | RT_VALIGN_BOTTOM, text = 1),
        MultiContentEntryText(pos = (6, 33), size = (705,21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 2),
        MultiContentEntryPixmapAlphaTest(pos = (711, 8), size = (44, 44), png = 3),
      ],
      "fonts": [
        gFont("Regular", ' + (TraxanosHD.default_font_size + 2).to_s + '),
        gFont("Regular", ' + (TraxanosHD.default_font_size - 3).to_s + ')
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

