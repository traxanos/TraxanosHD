class TraxanosHD::Element
  def clock
    label do # right header
      position -TraxanosHD.right_width, 0
      size TraxanosHD.right_width, TraxanosHD.header_height
      background :transparent

      left = 52 * TraxanosHD.grid
      right = 48 * TraxanosHD.grid

      label do
        # right
        position -right, 0
        size right

        widget do
          font "Regular", 42
          render "Label"
          orientation :center, :center
          nowrap 1
          source "global.CurrentTime"
          convert "Default", type: "ClockToText"
          transparent 1
        end
      end

      label do
        # left
        position -(right+left), 3
        size left, -6
        accent

        widget do
          position -(147), 6
          size 138, 24
          font "Regular", TraxanosHD.default_font_size
          render "Label"
          orientation :right, :center
          nowrap 1
          source "global.CurrentTime"
          convert "Format:%A", type: "ClockToText"
          transparent 1
          accent
        end

        widget do
          position -(147), 6 + 27
          size 138, 24
          font "Regular", TraxanosHD.default_font_size
          render "Label"
          orientation :right, :center
          nowrap 1
          source "global.CurrentTime"
          convert "Format:%e. %B", type: "ClockToText"
          transparent 1
          accent
        end

      end

    end
  end
end
