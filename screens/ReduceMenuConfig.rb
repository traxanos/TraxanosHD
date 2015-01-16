TraxanosHD::Screen.new(xml, :ReduceMenuConfig, "VTI ReduceMenu") do
  header
  main do
    title :Title

    template = '{
      "template": [
        MultiContentEntryText(pos = (60, 3), size = (712, 48), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0  ),
        MultiContentEntryPixmapAlphaTest(pos = (3, 3), size = (48, 48), png = 2)
      ],
      "fonts": [
        gFont("SegoeUI", 28)
      ],
      "itemHeight": 54
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 7*54
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
