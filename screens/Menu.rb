TraxanosHD::Screen.new(@main, :Menu, "Main menu") do
  header do
    header_title :title
  end

  main do
  end

  colorbar do
    colorbar_buttons1(false, 'green', 'yellow', 'blue')
  end

  template = '{
    "template": [
      MultiContentEntryText(pos = (24,5), size = (774,48), flags = RT_HALIGN_LEFT, text = 0)
    ],
    "fonts": [
      gFont("Regular", 26)
    ],
    "itemHeight": 48
  }'

  widget do
    position 33, 153+18
    size 822, 432
    source "menu"
    transparent 1
    render "Listbox"
    enablewraparound 1
    scrollbars("showNever")
    convert template, type: "TemplatedMultiContent"
  end

end

