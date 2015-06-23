TraxanosHD::Screen.new(@main, :TimerEntry, "Timer entry") do
  header do
    header_title "Timer entry"
  end

  main do
    widget do
      size nil, 480
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

  colorbar do
    colorbar_buttons1("canceltext", "oktext", false, false)
  end
end

