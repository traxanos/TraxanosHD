module TraxanosHD::Images
  class Icon < Base
    def render
      options[:antialias] ||= false
      options[:size] ||= 18
      options[:x] ||= 0
      options[:y] ||= 0

      if options[:antialias]
        line = Magick::Draw.new
        line.fill color_by_colorname(options[:background])
        line.fill_opacity opacity_by_colorname(options[:background])
        line.rectangle 0, 0, width, height
        line.draw image
      end

      text = Magick::Draw.new
      text.font = "fonts/FontAwesome.ttf"
      text.fill = color_by_colorname(options[:foreground])
      text.pointsize = options[:size]
      text.gravity = Magick::NorthWestGravity
      text.text_antialias = options[:antialias]
      text.text options[:x], options[:y], options[:code]
      text.draw(image)
    end

    def width
      options[:width]
    end

    def height
      options[:height]
    end

    def filename
      "PNG8:#{options[:filename]}"
    end
  end
end