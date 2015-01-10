TraxanosHD::Screen.new(xml, :TimerEditList, "Timer Editor") do
  header
  main do
    title "Timer Editor"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      itemheight 30
      name "timerlist"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end
