TraxanosHD::Screen.new(xml, :BouquetSelector, "Choose bouquet") do
  header do
    header_title "Choose bouquet"
  end

  main do
    widget do
      size nil, 510
      itemheight 30
      name "menu"
      font "Regular", TraxanosHD.default_font_size
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end
end