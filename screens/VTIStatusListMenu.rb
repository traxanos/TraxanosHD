TraxanosHD::Screen.new(xml, :VTIStatusListMenu, "VTI Status Menu") do
  header
  main do
    title :title

    template = '{
      "template": [
        MultiContentEntryText(pos = (30, 0), size = (765, 33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0),
        MultiContentEntryPixmapAlphaTest(size = (5, 5), size = (24, 24), png = 3)
      ],
      "fonts": [
        gFont("SegoeUI", 24)
      ],
      "itemHeight": 33
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      render "Listbox"
      source "list"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end
