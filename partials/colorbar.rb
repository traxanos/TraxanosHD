class TraxanosHD::Element
  def colorbar(x = nil, y = nil, &block)
    x ||= TraxanosHD.border
    y ||= 645

    box do
      position x, y
      size TraxanosHD.left_width, 6 + 30

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

      label do
        position 414, 0
        size 180, 3
        background :yellow
      end

      label do
        position 612, 0
        size 180, 3
        background :blue
      end

      label do
        position 0, 3
        size nil, 30
        transparent 1

        instance_eval(&block) if block_given?
      end
    end
  end
end
