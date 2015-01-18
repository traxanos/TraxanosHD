TraxanosHD::Screen.new(xml, :TimeDateInput, "Time/Date Input") do
  position :center, :center, 2
  size 378 + (TraxanosHD.spacer*2), 150
  label do

    widget do
      position TraxanosHD.spacer, TraxanosHD.spacer
      size -(TraxanosHD.spacer*2), 30*3
      itemheight 30
      name "config"
      transparent 1
      scrollbars
    end

    box do
      position 0, 120-6
      size nil, 6 + 30

      label do
        position 18, 0
        size 180, 3
        background :red
      end

      label do
        position 216, 0
        size 180, 3
        background :green
      end

      widget do
        position 18-9
        size 198, 30
        name "canceltext"
        font "Share", TraxanosHD.default_font_size
        orientation :center, :center
        nowrap 1
        transparent 1
      end

      widget do
        position 216-9
        size 198, 30
        name "oktext"
        font "Share", TraxanosHD.default_font_size
        orientation :center, :center
        nowrap 1
        transparent 1
      end

    end
  end
end
