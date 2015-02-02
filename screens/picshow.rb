TraxanosHD::Screen.new(xml, :picshow, "PicturePlayer") do
  header do
    header_title "EPG Refresh Configuration"
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "filelist"
      transparent 1
      enablewraparound 1
    end
  end

  main_accent do
    widget do
      name "thn"
      alphatest "on"
      accent
      foreground nil
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end