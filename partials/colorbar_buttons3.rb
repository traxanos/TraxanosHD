class TraxanosHD::Element
  def colorbar_buttons3(red = false, green = false, yellow = false, blue = false)
    if red
      label do
        position 18-9
        size 198, 42
        text "#{red}"
        font "Regular", TraxanosHD.default_colorbar_font_size
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end

    if green
      label do
        position 216-9
        size 198, 42
        text "#{green}"
        font "Regular", TraxanosHD.default_colorbar_font_size
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end

    if yellow
      label do
        position 414-9
        size 198, 42
        text "#{yellow}"
        font "Regular", TraxanosHD.default_colorbar_font_size
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end

    if blue
      label do
        position 612-9
        size 198, 42
        text "#{blue}"
        font "Regular", TraxanosHD.default_colorbar_font_size
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end
  end
end
