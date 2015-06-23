screen = TraxanosHD::Screen.new(:HdmiCecPlugin, "HdmiCecPlugin") do
  header do
    header_title :Title
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
    colorbar_buttons2(true, true, true, true)
  end
end

screen.render!(@main)
