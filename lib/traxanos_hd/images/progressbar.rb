module TraxanosHD::Images
  class Progressbar < Base
    def render
      line = Magick::Draw.new
      line.fill(color_by_colorname(options[:color]))
      line.fill_opacity(opacity_by_colorname(options[:color]))
      line.rectangle(0, 0, width, height)
      line.draw(image)
    end

    def width
      TraxanosHD.width
    end

    def height
      5
    end

    def filename
      "images/progressbar_#{options[:name]}.png"
    end
  end
end