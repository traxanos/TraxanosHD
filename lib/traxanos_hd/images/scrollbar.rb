module TraxanosHD::Images
  class Scrollbar < Base
    def render
      line = Magick::Draw.new

      line.fill(color_by_colorname(:foreground))
      line.fill_opacity(opacity_by_colorname(:foreground))
      line.rectangle(2, 0, 2, height)
      line.fill(color_by_colorname(:background))
      line.fill_opacity(opacity_by_colorname(:background))
      line.rectangle(0, 0, 1, height)
      line.rectangle(3, 0, 4, height)
      line.draw(image)
    end

    def width
      5
    end

    def height
      TraxanosHD.height
    end

    def filename
      "images/scrollbar_bg.png"
    end
  end
end