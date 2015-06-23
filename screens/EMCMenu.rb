TraxanosHD::Screen.new(@main, :EMCMenu, "EMC menu") do
  header do
    header_title :title
  end

  main do
    widget do
      size nil, 510
      itemheight 30
      name "menu"
      transparent 1
      enablewraparound 1
      scrollbars
      convert type: "StringList"
    end
  end
end

