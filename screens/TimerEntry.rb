TraxanosHD::Screen.new(xml, :TimerEntry, "Timer entry") do
  header
  main do
    title "Timer entry"

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
    colorbar_buttons1("canceltext", "oktext", false, false)
  end
end
