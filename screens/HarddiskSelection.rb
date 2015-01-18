TraxanosHD::Screen.new(xml, :HarddiskSelection, "Select HDD") do
  header do
    header_title "Select HDD"
  end

  main do
    widget do
      size nil, 480
      itemheight 30
      name "hddlist"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end
end
