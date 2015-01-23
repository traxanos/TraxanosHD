class TraxanosHD::Element
  def header(&block)
    box do # border
      position TraxanosHD.border, TraxanosHD.border
      size TraxanosHD.inner_width, TraxanosHD.header_height

      if block_given?
        label do
          size TraxanosHD.left_width, TraxanosHD.header_height
          instance_eval(&block)
        end
        label do
          position TraxanosHD.left_width, 3
          size TraxanosHD.right_width, TraxanosHD.header_height-6
          accent2

          widget do
            position TraxanosHD.spacer, 0
            size -(TraxanosHD.spacer*2)
            font "Regular", 50
            render "Label"
            orientation :right, :center
            nowrap 1
            source "global.CurrentTime"
            convert "Default", type: "ClockToText"
            transparent 1
            accent2
          end

          widget do
            position TraxanosHD.spacer, 6
            size -(TraxanosHD.spacer*2), 24
            font "Regular", TraxanosHD.default_font_size
            render "Label"
            orientation :left, :top
            nowrap 1
            source "global.CurrentTime"
            convert "Format:%A", type: "ClockToText"
            transparent 1
            accent2
          end

          widget do
            position TraxanosHD.spacer, 6 + 27
            size -(TraxanosHD.spacer*2), 24
            font "Regular", TraxanosHD.default_font_size
            render "Label"
            orientation :left, :bottom
            nowrap 1
            source "global.CurrentTime"
            convert "Format:%e. %B", type: "ClockToText"
            transparent 1
            accent2
          end
        end
      else
        clock
        weather
      end
    end
  end
end