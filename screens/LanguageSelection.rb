screen = TraxanosHD::Screen.new(:LanguageSelection, "Language selection") do
  header do
    header_title "Language selection"
  end

  main do
    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 0), size = (690,40), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
        MultiContentEntryPixmapAlphaTest(pos = (702, 4), size = (60, 40), png = 2),
      ],
      "fonts": [
        gFont("Regular", 24),
      ],
      "itemHeight": 48
    }'

    widget do
      size 774, 480
      render "Listbox"
      source "languages"
      transparent 1
      enablewraparound 1
      scrollbars "showOnDemand"
      convert template, type: "TemplatedMultiContent"
    end
  end
end

screen.render!(@main)
