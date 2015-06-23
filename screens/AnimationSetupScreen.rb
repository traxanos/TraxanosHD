screen = TraxanosHD::Screen.new(:AnimationSetupScreen, "Animation Setup") do
  header do
    header_title "Animation Setup"
  end

  main do
    widget do
      size nil, 30*16
      itemheight 30
      name "config"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons2(true, true, false, true)
  end
end

screen.render!(@main)
