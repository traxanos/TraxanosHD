screen = TraxanosHD::Screen.new(:CamSelectMenu, "VTI Cam Menu") do
  header do
    header_title :Title
  end

  main do

    template = '{
      "template": [
        MultiContentEntryText(pos = (33, 0), size = (800, 30), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0 ),
        MultiContentEntryPixmapAlphaTest(pos = (3, 3), size = (24, 24), png = 2)
      ],
      "fonts": [
        gFont("Regular", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "itemHeight": 30
    }'

    widget do
      size nil, 480
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

screen.render!(@main)
