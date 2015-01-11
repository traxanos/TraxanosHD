module TraxanosHD::Images
  class ProgressbarForeground < Base
    def render
      line = Magick::Draw.new
      line.fill(color_by_colorname(:foreground))
      line.fill_opacity(opacity_by_colorname(:foreground))
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
      "images/progressbar_foreground.png"
    end
  end
end