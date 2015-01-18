class TraxanosHD::Element
  def clock
    label do # right header
      position -TraxanosHD.right_width, 0
      size TraxanosHD.right_width, TraxanosHD.header_height
      background :transparent

      left = 42 * TraxanosHD.grid
      right = 51 * TraxanosHD.grid

      label do
        # right
        position -right, 0
        size right

        widget do
          font "Share", 55
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
        accent2

        widget do
          position -(108+9), 6
          size 108, 24
          font "Share", TraxanosHD.default_font_size
          render "Label"
          orientation :right, :center
          nowrap 1
          source "global.CurrentTime"
          convert "Format:%A", type: "ClockToText"
          transparent 1
          accent2
        end

        widget do
          position -(108+9), 6 + 27
          size 108, 24
          font "Share", TraxanosHD.default_font_size
          render "Label"
          orientation :right, :center
          nowrap 1
          source "global.CurrentTime"
          convert "Format:%e. %B", type: "ClockToText"
          transparent 1
          accent2
        end

      end

    end
  end
end