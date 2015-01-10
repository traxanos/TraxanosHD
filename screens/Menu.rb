TraxanosHD::Screen.new(xml, :Menu, "Main menu") do
  header
  main do
    title :title
  end

  template = '{
    "template": [
      MultiContentEntryText(pos = (24,5), size = (774,48), flags = RT_HALIGN_LEFT, text = 0)
    ],
    "fonts": [
      gFont("SegoeUI", 28)
    ],
    "itemHeight": 48
  }'

  widget do
    position 33, 217
    size 822, 48 * 9
    source "menu"
    transparent 1
    render "Listbox"
    enablewraparound 1
    scrollbars("showNever")
    convert template, type: "TemplatedMultiContent"
  end

end
