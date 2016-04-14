class TraxanosHD::Element
  def colorbar(x = nil, y = nil, &block)
    x ||= TraxanosHD.border
    y ||= 645 - 9

    box do
      position x, y
      size TraxanosHD.left_width, 45

      label do
        position 18, 0 + 36
        size 180, 3
        background :red
      end

      label do
        position 216, 0 + 36
        size 180, 3
        background :green
      end

      label do
        position 414, 0 + 36
        size 180, 3
        background :yellow
      end

      label do
        position 612, 0 + 36
        size 180, 3
        background :blue
      end

      label do
        position 0, 0
        size nil, 36
        transparent 1

        instance_eval(&block) if block_given?
      end
    end
  end
end
