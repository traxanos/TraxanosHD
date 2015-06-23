screen = TraxanosHD::Screen.new(:Menu, "Main menu") do
  header do
    header_title :title
  end

  main do
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
    size 822, 480
    source "menu"
    transparent 1
    render "Listbox"
    enablewraparound 1
    scrollbars("showNever")
    convert template, type: "TemplatedMultiContent"
  end

end

screen.render!(@main)
