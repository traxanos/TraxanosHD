class TraxanosHD::Element
  def main(full = false, &block)
    width = full ? TraxanosHD.left_width+TraxanosHD.right_width : TraxanosHD.left_width
    label do
      position TraxanosHD.border, -(TraxanosHD.border + 546), -10
      size width, 546

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

        instance_eval(&block)
      end
    end
  end

  def main_accent(&block)
    label do
      position TraxanosHD.border+TraxanosHD.left_width, -(TraxanosHD.border + 546 - 6), -10
      size TraxanosHD.right_width, 534
      accent

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

        instance_eval(&block)
      end
    end
  end
end
