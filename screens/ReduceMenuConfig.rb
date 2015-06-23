screen = TraxanosHD::Screen.new(xml, :ReduceMenuConfig, "VTI ReduceMenu") do
  header do
    header_title :Title
  end

  main do
    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 6), size = (706, 48), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0),
        MultiContentEntryPixmapAlphaTest(pos = (711, 3), size = (48, 48), png = 2),
      ],
      "fonts": [
        gFont("Regular", 28)
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
    colorbar_buttons2(true, true, true, false)
  end
end

screen.render!
