TraxanosHD::Screen.new(xml, :DirectoryBrowser, "Directorybrowser") do
  header
  main do
    title "Directorybrowser"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, -(48 + TraxanosHD.spacer*3)
      name "filelist"
      transparent 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons2(true, true)
  end
end