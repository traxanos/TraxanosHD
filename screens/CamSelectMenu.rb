TraxanosHD::Screen.new(xml, :CamSelectMenu, "VTI Cam Menu") do
  header
  main do
    title :Title

    template = '{
      "template": [
        MultiContentEntryText(pos = (30, 0), size = (800, 30), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0 ),
        MultiContentEntryPixmapAlphaTest(pos = (3, 3), size = (24, 24), png = 2)
      ],
      "fonts": [
        gFont("Regular", 20)
      ],
      "itemHeight": 30
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 14*30
      source "list"
      transparent 1
      render "Listbox"
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end
