screen = TraxanosHD::Screen.new(:MultiQuickButtonMacro, "MultiQuickButton macro configuration") do
  header do
    header_title :Title
  end

  main do
    template = '{
      "template": [
        MultiContentEntryText(pos = (30, 0), size = (765, 30), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0)
      ],
      "fonts": [
        gFont("Regular", ' + TraxanosHD.default_font_size.to_s + ')
      ],
      "itemHeight": 30
    }'

    widget do
      size nil, 30*16
      itemheight 30
      name "menu"
      transparent 1
      enablewraparound 1
      scrollbars
      render "Listbox"
      convert template, type: "TemplatedMultiContent"
    end
  end

  colorbar do
    colorbar_buttons1(:buttonred, :buttongreen, :buttonyellow, :buttonblue)
  end
end

screen.render!(@main)
