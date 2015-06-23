screen = TraxanosHD::Screen.new(:Pic_Exif, "PicturePlayer") do
  header do
    header_title "PicturePlayer"
  end

  main do
    template = '{
      "template": [
        MultiContentEntryText(pos = (30, 0), size = (765, 30), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1)
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
      selectiondisabled 1
      scrollbars
      render "Listbox"
      convert template, type: "TemplatedMultiContent"
    end
  end

  colorbar do
    colorbar_buttons2(true)
  end
end

screen.render!(@main)
