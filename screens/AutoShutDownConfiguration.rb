TraxanosHD::Screen.new(@main, :AutoShutDownConfiguration, "AutoShutDown") do
  header do
    header_title "AutoShutDown"
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars("showNever")
    end
  end

  colorbar do
    colorbar_buttons1(:buttonred, :buttongreen, :buttonyellow)
  end
end

