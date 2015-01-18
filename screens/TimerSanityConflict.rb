TraxanosHD::Screen.new(xml, :TimerSanityConflict, "Timer sanity error") do
  header do
    header_title "Timer sanity error"
  end

  main true do

    widget do
      size nil, 30*7
      itemheight 30
      name "list"
      transparent 1
      scrollbars
    end

    widget do
      position 0, (30*7) + TraxanosHD.spacer
      size (parent.width - TraxanosHD.spacer)/2, 250
      name "timer1"
      transparent 1
      scrollbars
    end

    widget do
      position -((parent.width - TraxanosHD.spacer)/2), (30*7) + TraxanosHD.spacer
      size (parent.width - TraxanosHD.spacer)/2, 250
      name "timer2"
      transparent 1
      scrollbars
    end

  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end
