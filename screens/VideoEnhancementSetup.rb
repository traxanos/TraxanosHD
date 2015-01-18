TraxanosHD::Screen.new(xml, :VideoEnhancementSetup, "VideoEnhancementSetup") do
  header do
    header_title :Title
  end

  main do
    widget do
      size nil, 30*14
      itemheight 30
      name "config"
      transparent 1
      scrollbars
    end

    widget do
      position 0, (30*14) + TraxanosHD.spacer
      size nil, 30
      source "introduction"
      render "Label"
      font "Regular", TraxanosHD.default_font_size
      orientation :center, :center
      transparent 1
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end
