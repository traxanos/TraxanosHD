TraxanosHD::Screen.new(xml, :Setup) do
  header
  main do
    title "Setup"

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

  colorbar do
    colorbar_buttons2(true, true, false, false)
  end
end
