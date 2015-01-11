module TraxanosHD::Images
  class Base
    attr_reader :image
    attr_reader :options

    def initialize(*args)
      @options = args.extract_options!

      @image = Magick::Image.new(width, height) do |i|
        i.background_color = "Transparent"
      end

      render

      @image.write("#{filename}")
    end

    def opacity_by_colorname(name)
      1-(TraxanosHD.colors[name.to_sym].slice(1,2).to_i(16).to_f/255).round(2)
    end

    def color_by_colorname(name)
      "#" + TraxanosHD.colors[name.to_sym].slice(3,6)
    end
  end
end