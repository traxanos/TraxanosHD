screen = TraxanosHD::Screen.new(:BouquetSelector, "Choose bouquet") do
  header do
    header_title "Choose bouquet"
  end

  main do
    widget do
      size nil, 510
      itemheight 30
      name "menu"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end
end

screen.render!(@main)
