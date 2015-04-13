TraxanosHD::Screen.new(xml, :AutoTimerPreview, "Preview AutoTimer") do
  header do
    header_title :Title
  end


  # 0 = EventName
  # 2 = AutoTimeName
  # 3 = ServiceName
  # 4 = Time

  main do
    template = '{
      "template": [
        MultiContentEntryText(pos=(3,3),  size=(759,24), text = 0, font = 0, flags = RT_HALIGN_LEFT|RT_VALIGN_TOP),
        MultiContentEntryText(pos=(3,3),  size=(759,24), text = 3, font = 0, flags = RT_HALIGN_RIGHT|RT_VALIGN_TOP),
        MultiContentEntryText(pos=(3,33), size=(759,24), text = 4, font = 1, flags = RT_HALIGN_LEFT|RT_VALIGN_BOTTOM),
        MultiContentEntryText(pos=(3,33), size=(759,24), text = 2, font = 1, flags = RT_HALIGN_RIGHT|RT_VALIGN_BOTTOM),
      ],
      "fonts": [
        gFont("Regular", 22),
        gFont("Regular", 18)
      ],
      "itemHeight": 60
    }'

    widget do
      size 774, 30*16
      render "Listbox"
      source "timerlist"
      transparent 1
      enablewraparound 1
      scrollbars "showAlways"
      convert template, type: "TemplatedMultiContent"
    end

  end

  main_accent do
  end

  colorbar do
    colorbar_buttons2(true, false, false, false)
  end
end
