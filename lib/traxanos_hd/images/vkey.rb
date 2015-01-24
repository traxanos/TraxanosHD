module TraxanosHD::Images
  class VKey < Base
    def render
      if options[:name] == "sel"
        draw = Magick::Draw.new
        draw.fill = color_by_colorname(:backgroundAccent)
        draw.rectangle 1, height-6, width-2, height-2
        draw.draw image
      else
        draw = Magick::Draw.new
        draw.stroke = color_by_colorname(:foreground)
        draw.stroke_width = 1
        draw.fill = color_by_colorname(:background)
        draw.fill_opacity(opacity_by_colorname(:background))
        draw.rectangle 0, 0, width-1, height-1
        draw.draw image
      end

      if options[:name] == "esc"
        text = Magick::Draw.new
        text.fill = color_by_colorname(:foreground)
        text.font = "fonts/FontAwesome.ttf"
        text.pointsize = 22.0
        text.gravity = Magick::CenterGravity
        text.annotate(image, width, height, 0, 0, "")
      end

      if options[:name] == "clr"
        text = Magick::Draw.new
        text.fill = color_by_colorname(:foreground)
        text.font = "fonts/FontAwesome.ttf"
        text.pointsize = 22.0
        text.gravity = Magick::CenterGravity
        text.annotate(image, width, height, 0, 0, "")
      end

      if options[:name] == "ok"
        draw = Magick::Draw.new
        draw.fill = color_by_colorname(:green)
        draw.rectangle 1, 3, width-2, 5
        draw.draw image

        text = Magick::Draw.new
        text.fill = color_by_colorname(:foreground)
        text.font = "fonts/FontAwesome.ttf"
        text.pointsize = 22.0
        text.gravity = Magick::CenterGravity
        text.annotate(image, width, height, 0, 0, "")
      end

      if options[:name] == "left"
        text = Magick::Draw.new
        text.fill = color_by_colorname(:foreground)
        text.font = "fonts/FontAwesome.ttf"
        text.pointsize = 22.0
        text.gravity = Magick::CenterGravity
        text.annotate(image, width, height, 0, 0, "")
      end

      if options[:name] == "right"
        text = Magick::Draw.new
        text.fill = color_by_colorname(:foreground)
        text.font = "fonts/FontAwesome.ttf"
        text.pointsize = 22.0
        text.gravity = Magick::CenterGravity
        text.annotate(image, width, height, 0, 0, "")
      end

      if options[:name] == "backspace"
        draw = Magick::Draw.new
        draw.fill = color_by_colorname(:red)
        draw.rectangle 1, 3, width-2, 5
        draw.draw image

        text = Magick::Draw.new
        text.fill = color_by_colorname(:foreground)
        text.font = "fonts/FontAwesome.ttf"
        text.pointsize = 22.0
        text.gravity = Magick::CenterGravity
        text.annotate(image, width, height, 0, 0, "")
      end


      if options[:name] == "shift_sel"
        draw = Magick::Draw.new
        draw.fill = color_by_colorname(:blue)
        draw.rectangle 1, 3, width-2, 5
        draw.draw image
      end

      if options[:name] == "shift" or options[:name] == "shift_sel"
        text = Magick::Draw.new
        text.fill = color_by_colorname(:foreground)
        text.font = "fonts/FontAwesome.ttf"
        text.pointsize = 20.0
        text.gravity = Magick::NorthWestGravity
        text.annotate(image, width, height, 5, 9, "")
      end
    end

    def width
      58
    end

    def height
      45
    end

    def filename
      "skin_default/vkey_#{options[:name]}.png"
    end
  end
end