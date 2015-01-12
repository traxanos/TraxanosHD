TraxanosHD::Screen.new(xml, :VideoEnhancementSetup, "VideoEnhancementSetup") do
  header
  main do
    title :Title

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*13
      itemheight 30
      name "config"
      transparent 1
      scrollbars
    end

    widget do
      position 0, 48 + TraxanosHD.spacer + (30*13) + 6
      size nil, 27
      source "introduction"
      render "Label"
      font "Regular", TraxanosHD.default_left_font_size
      orientation :center, :top
      transparent 1
    end
  end

  colorbar do
    colorbar_buttons2(true, true, true, true)
  end
end
