class TraxanosHD::Element
  def newmain(full = false, &block)
    width = full ? TraxanosHD.left_width+TraxanosHD.right_width : TraxanosHD.left_width
    label do
      position TraxanosHD.border, TraxanosHD.border, -10
      size width, 642

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

        instance_eval(&block)
      end
    end
  end

  def newmain_accent(&block)
    label do
      position TraxanosHD.border+TraxanosHD.left_width, TraxanosHD.border + 6, -10
      size TraxanosHD.right_width, 642 - 12
      accent

      widget do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), 45

        font "Light", 27
        render "Label"
        orientation :right, :top
        nowrap 1
        source "global.CurrentTime"
        convert "Default", type: "ClockToText"
        transparent 1
        accent
      end

      widget do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), 45

        font "Light", 27
        render "Label"
        orientation :left, :top
        nowrap 1
        source "global.CurrentTime"
        convert "Format:%A, %e. %B", type: "ClockToText"
        transparent 1
        accent
      end

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer+63
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)-63

        instance_eval(&block)
      end
    end
  end

  def main(full = false, height = 546, &block)
    width = full ? TraxanosHD.left_width+TraxanosHD.right_width : TraxanosHD.left_width
    label do
      position TraxanosHD.border, 135, -10
      size width, height

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

        instance_eval(&block)
      end
    end
  end

  def main_accent(height = 534, &block)
    label do
      position TraxanosHD.border+TraxanosHD.left_width, 135+6, -10
      size TraxanosHD.right_width, height
      accent

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

        instance_eval(&block)
      end
    end
  end
end
