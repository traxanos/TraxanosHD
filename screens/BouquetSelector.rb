TraxanosHD::Screen.new(xml, :BouquetSelector, "Choose bouquet") do
  header do
    header_title "Choose bouquet"
  end

  main do
    widget do
      size nil, 480
      itemheight 30
      name "menu"
      font "Regular", 18
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end