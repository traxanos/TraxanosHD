TraxanosHD::Screen.new(xml, :NimSetup, "Reception Settings") do
  header
  main do
    title "Reception Settings"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end
end
