screen = TraxanosHD::Screen.new(xml, :AtileHDScreens, "AtileHD Setup") do
  header do
    header_title :Title
  end

  main do
    template = '{
      "template": [
        MultiContentEntryPixmapAlphaTest(pos = (3, 3), size = (24, 24), png = 2),
        MultiContentEntryText(pos = (30, 3),  size = (668, 24), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
      ],
      "fonts": [
        gFont("Regular", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "itemHeight": 30
    }'

    widget do
      size nil, 30*16
      render "Listbox"
      source "menu"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end
  end

  main_accent do
    widget do
      position ((TraxanosHD.right_width-280-(TraxanosHD.spacer*2))/2), ((TraxanosHD.right_width-280-(TraxanosHD.spacer*2))/2)
      size 280, 210
      name "Picture"
      alphatest "on"
      accent
      foreground nil
    end
  end

  colorbar do
    colorbar_buttons2(true, true, false, false)
  end
end

screen.render!
