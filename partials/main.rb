class TraxanosHD::Element
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
