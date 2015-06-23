screen = TraxanosHD::Screen.new(:DirectoryBrowser, "Directorybrowser") do
  header do
    header_title "Directorybrowser"
  end

  main do
    widget do
      size nil, 480
      name "filelist"
      transparent 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons2(true, true)
  end
end

screen.render!(@main)
