screen = TraxanosHD::Screen.new(:TimerSelection, "Timer selection") do
  header do
    header_title "Timer Editor"
  end

  main do
    widget do
      size nil, 510
      name "timerlist"
      transparent 1
      enablewraparound 1
      scrollbars
    end

  end
end

screen.render!(@main)
