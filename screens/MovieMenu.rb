screen = TraxanosHD::Screen.new(:MovieMenu, "Movie Menu") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 510
      itemheight 30
      source "menu"
      render "Listbox"
      transparent 1
      enablewraparound 1
      scrollbars
      convert type: "StringList"
    end

  end
end

screen.render!(@main)
