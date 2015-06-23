TraxanosHD::Screen.new(@main, :VTISubMenu, "VTI Sub Menu") do
  header do
    header_title :title
  end

  main do

    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 6),  size = (711, 27), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
        MultiContentEntryText(pos = (6, 33), size = (711, 21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 2),
        MultiContentEntryPixmapAlphaTest(pos = (711, 8), size = (48, 48), png = 3),
      ],
      "fonts": [
        gFont("Regular", ' + (TraxanosHD.default_font_size + 2).to_s + '),
        gFont("Regular", ' + (TraxanosHD.default_font_size - 3).to_s + ')
      ],
      "itemHeight": 60
    }'

    widget do
      size nil, 480
      render "Listbox"
      source "list"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end

  colorbar do
    colorbar_buttons2(true)
  end
end

