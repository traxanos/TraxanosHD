module TraxanosHD::Images
  class ProgressbarAccent < Base
    def render
      line = Magick::Draw.new
      line.fill(color_by_colorname(:backgroundAccent))
      line.fill_opacity(opacity_by_colorname(:backgroundAccent))
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
      "images/progressbar_accent.png"
    end
  end
end