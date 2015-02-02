TraxanosHD::Screen.new(xml, :EPGRefreshServiceEditor) do
  header do
    header_title "Edit Services to refresh"
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end