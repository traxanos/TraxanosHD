TraxanosHD::Screen.new(xml, :HarddiskSelection, "Select HDD") do
  header
  main do
    title "Select HDD"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      itemheight 30
      name "hddlist"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end
end
