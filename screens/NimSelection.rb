TraxanosHD::Screen.new(xml, :NimSelection, "Choose Tuner") do
  header
  main do
    title "Choose Tuner"

    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 3),  size = (760, 33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 1),
        MultiContentEntryText(pos = (6, 33), size = (760, 45), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER | RT_WRAP, text = 2)
      ],
      "fonts": [
        gFont("SegoeUI", 24),
        gFont("Regular", 14),
      ],
      "itemHeight": 84
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 5*84
      render "Listbox"
      source "nimlist"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end
end
