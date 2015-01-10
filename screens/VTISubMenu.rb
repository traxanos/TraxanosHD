TraxanosHD::Screen.new(xml, :VTISubMenu, "VTI Sub Menu") do
  header
  main do
    title :title

    template = '{
      "template": [
        MultiContentEntryText(pos = (6, 0), size = (765, 33), font = 0, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 0),
        MultiContentEntryText(pos = (6, 33), size = (765, 21), font = 1, flags = RT_HALIGN_LEFT | RT_VALIGN_CENTER, text = 2)
      ],
      "fonts": [
        gFont("SegoeUI", 24),
        gFont("Regular", 14),
      ],
      "itemHeight": 54
    }'

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 54*8
      render "Listbox"
      source "list"
      transparent 1
      enablewraparound 1
      scrollbars
      convert template, type: "TemplatedMultiContent"
    end

  end
end
