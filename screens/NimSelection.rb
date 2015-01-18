TraxanosHD::Screen.new(xml, :NimSelection, "Choose Tuner") do
  header do
    header_title "Choose Tuner"
  end

  main do

    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 0),  size = (705, 33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_BOTTOM, text = 1),
        MultiContentEntryText(pos = (6, 33), size = (760, 48), font = 1, flags = RT_HALIGN_LEFT | RT_WRAP, text = 2)
      ],
      "fonts": [
        gFont("Share", 24),
        gFont("Share", 20),
      ],
      "itemHeight": 81
    }'

    widget do
      size nil, 6*81
      render "Listbox"
      source "nimlist"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end
end
