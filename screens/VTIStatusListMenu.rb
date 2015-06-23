screen = TraxanosHD::Screen.new(xml, :VTIStatusListMenu, "VTIStatusListMenu") do
  header do
    header_title :title
  end

  main do

    template = '{
      "template": [
        MultiContentEntryText(pos = (30, 0), size = (765, 30), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0),
        MultiContentEntryPixmapAlphaTest(pos = (3, 3), size = (24, 24), png = 3)
      ],
      "fonts": [
        gFont("Regular", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "itemHeight": 30
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
    colorbar_buttons1(true, true, true, true)
  end
end

screen.render!
