TraxanosHD::Screen.new(xml, :BouquetSelector, "Choose bouquet") do
  header
  main do
    title "Choose bouquet"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
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