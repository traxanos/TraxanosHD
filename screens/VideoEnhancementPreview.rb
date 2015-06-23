TraxanosHD::Screen.new(@main, :VideoEnhancementPreview, "VideoEnhancementPreview") do
  label do
    position (TraxanosHD.width-TraxanosHD.left_width)/2, 486
    size TraxanosHD.left_width, 192

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), 30*3
      itemheight 30
      name "config"
      transparent 1
      scrollbars
    end

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer + (30*3) + 6
      size -(TraxanosHD.spacer*2), 27
      source "introduction"
      render "Label"
      font "Regular", TraxanosHD.default_font_size
      orientation :center, :top
      transparent 1
    end
  end

  colorbar((TraxanosHD.width-TraxanosHD.left_width)/2) do
    colorbar_buttons2(true, true, false, false)
  end
end

