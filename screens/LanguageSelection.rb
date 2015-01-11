TraxanosHD::Screen.new(xml, :LanguageSelection, "Language selection") do
  header
  main do
    title "Language selection"

    template = '{
      "template": [
        MultiContentEntryText(pos = (66, 0), size = (300,40), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
        MultiContentEntryPixmapAlphaTest(pos = (3, 3), size = (60, 40), png = 2),
      ],
      "fonts": [
        gFont("SegoeUI", 24),
      ],
      "itemHeight": 46
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 46*9
      render "Listbox"
      source "languages"
      transparent 1
      enablewraparound 1
      scrollbars "showOnDemand"
      convert template, type: "TemplatedMultiContent"
    end
  end
end
