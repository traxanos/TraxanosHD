TraxanosHD::Screen.new(xml, :TimerSelection, "Timer selection") do
  header
  main do
    title "Timer Editor"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, -(48 + TraxanosHD.spacer)
      name "timerlist"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end
end
