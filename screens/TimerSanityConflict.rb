TraxanosHD::Screen.new(xml, :TimerSanityConflict, "Timer sanity error") do
  header
  main(true) do
    title "Timer sanity error"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*5
      itemheight 30
      name "list"
      transparent 1
      scrollbars
    end

    widget do
      position 0, 48 + TraxanosHD.spacer + TraxanosHD.spacer + (30*5)
      size (parent.width - TraxanosHD.spacer)/2, 250
      name "timer1"
      transparent 1
      scrollbars
    end

    widget do
      position -((parent.width - TraxanosHD.spacer)/2), 48 + TraxanosHD.spacer + TraxanosHD.spacer + (30*5)
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
