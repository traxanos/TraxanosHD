module TraxanosHD
  class Element
    attr_reader :options, :converts, :applets

    attr_reader :x
    attr_reader :y
    attr_reader :z
    attr_reader :width
    attr_reader :height

    attr_reader :ref
    attr_reader :parent_ref
    attr_reader :elements

    def initialize(ref, &block)
      @parent_ref = ref
      @ref = Reference.new(0, 0, 0, 0, 0)
      @options = {}
      @converts = []
      @elements = []
      @applets = {}

      position(0, 0)
      size
      background(:background)
      foreground(:foreground)

      instance_eval(&block)

      after_initialize
    end

    def after_initialize

    end

    def preview_bg_styles
      styles = {}
      styles["position"] = :absolute
      styles["top"] = "#{y}px"
      styles["left"] = "#{x}px"
      styles["width"] = "#{width}px"
      styles["height"] = "#{height}px"
      styles["background-position"] = "-#{x}px -#{y}px"
      styles["background-image"] = "url(background.jpg)" unless (options["transparent"].to_s == "1" or options["backgroundColor"] == "transparent")
      styles["z-index"] = z
      styles.reject { |k, v| v.blank? }.collect { |k, v| "#{k}: #{v}" }.join("; ")
    end

    def preview_styles
      debug = (TraxanosHD.debug and self.class != Screen and self.class != Progressbar)
      border = debug ? 2 : 0

      styles = {}
      styles["position"] = :absolute

      if y.to_s == "center" and self.class == Screen
        styles["top"] = "#{(TraxanosHD.height-height)/2}px"
      else
        styles["top"] = "#{y}px"
      end

      if x.to_s == "center" and self.class == Screen
        styles["left"] = "#{(TraxanosHD.width-width)/2}px"
      else
        styles["left"] = "#{x}px"
      end

      styles["width"] = "#{width-border}px"
      styles["height"] = "#{height-border}px"
      styles["z-index"] = z

      if self.class == Progressbar
        styles["background-color"] = TraxanosHD.css_color(options["foregroundColor"])
      else
        if options["font"].present?
          styles["font-family"] = "#{options["font"].to_s.split(";").first}"
          styles["font-size"] = "#{options["font"].to_s.split(";").last}px"
        end

        styles["text-align"] = options["halign"] if options["halign"].present?
        styles["vertical-align"] = options["valign"] if options["valign"].present?

        styles["border"] = "1px solid rgba(255, 0, 0, 0.3)" if debug

        styles["background-color"] = TraxanosHD.css_color(options["backgroundColor"]) unless (options["transparent"].to_s == "1" or options["backgroundColor"] == "transparent")

        styles["color"] = TraxanosHD.css_color(options["foregroundColor"])
      end
      styles.reject { |k, v| v.blank? }.collect { |k, v| "#{k}: #{v}" }.join("; ")
    end

    def render!(xml)
      render_elements!(xml)

      if converts.empty?
        xml.tag!(type, options.reject { |k, v| v.blank? })
      else
        xml.tag!(type, options.reject { |k, v| v.blank? }) do |xml|
          converts.each do |convert|
            convert.render(xml)
          end
        end
      end
    end

    def render_elements!(xml)
      elements.each do |element|
        element.render!(xml)
      end
    end

    def render_preview!(html)
      html.div "", style: preview_bg_styles if not self.class == Pixmap and not options["render"] == "Pixmap"
      html.div "#{options['text']}", style: preview_styles
      render_preview_elements!(html)
    end

    def render_preview_elements!(html)
      elements.each do |element|
        element.render_preview!(html)
      end
    end

    def position(x = 0, y = 0, z = nil)
      if x.class == Symbol
        @x = x
      elsif x < 0
        @x = parent_ref.x + parent_ref.width + x
      else
        @x = parent_ref.x + x
      end

      if y.class == Symbol
        @y = y
      elsif y < 0
        @y = parent_ref.y + parent_ref.height + y
      else
        @y = parent_ref.y + y
      end

      @options["position"] = "#{@x},#{@y}"

      if self.class == Screen
        @options["zPosition"] = @z = z unless z.nil?
      else
        z = parent_ref.z += 1 if z.nil?
        @options["zPosition"] = @z = z

        ref.x = @x
        ref.y = @y
        ref.z = z
      end
    end

    def size(width = nil, height = nil)
      if width.nil?
        @width = parent_ref.width
      elsif width < 0
        @width = parent_ref.width + width
      else
        @width = width
      end
      if height.nil?
        @height = parent_ref.height
      elsif height < 0
        @height = parent_ref.height + height
      else
        @height = height
      end
      @options["size"] = "#{@width},#{@height}"
      ref.width = @width
      ref.height = @height
    end

    def text(text)
      @options["text"] = "#{text}"
    end

    def background(color)
      @options["backgroundColor"] = "#{color}"
    end

    def foreground(color)
      @options["foregroundColor"] = "#{color}"
    end

    def accent
      background :backgroundAccent
      foreground :foregroundAccent
    end

    def orientation(halign, valign = nil)
      @options["halign"] = halign
      @options["valign"] = valign
    end

    def transparent(transparent)
      @options["transparent"] = "#{transparent}"
    end

    def font(font, size)
      @options["font"] = "#{font}; #{size}"
    end

    def nowrap(value)
      @options["noWrap"] = "#{value}"
    end

    def render(value)
      @options["render"] = "#{value}"
    end

    def source(value)
      @options["source"] = "#{value}"
    end

    def name(value)
      @options["name"] = "#{value}"
    end

    def alphatest(value)
      @options["alphatest"] = "#{value}"
    end

    def config(value)
      @options["options"] = "#{value}"
    end

    def image(value)
      @options["pixmap"] = "#{value}"
    end

    def images(value)
      @options["pixmaps"] = "#{value}"
    end

    def convert(*args)
      @converts << Convert.new(*args)
    end

    def widget(&block)
      @elements << Widget.new(ref, &block)
    end

    def label(&block)
      @elements << Label.new(ref, &block)
    end

    def pixmap(&block)
      @elements << Pixmap.new(ref, &block)
    end

    def box(&block)
      @elements << Box.new(ref, &block)
    end

    def progressbar(&block)
      @elements << Progressbar.new(ref, &block)
    end

    def scrollbars(mode = "showOnDemand")
      options["scrollbarMode"] = mode
      options["scrollbarWidth"] = 5
      options["scrollbarSliderBorderWidth"] = 0
      # options["scrollbarSliderForegroundColor"] = :foreground
      # options["scrollbarSliderBorderColor"] = :foreground
      # options["scrollbarSliderBackgroundPicture"] = "TraxanosHD/scrollbar_bg.png"
      # options["scrollbarSliderPicture"] = "TraxanosHD/scrollbar.png"
    end

    def enablewraparound(value)
      @options["enableWrapAround"] = value
    end

    def shadow(value)
      @options["shadowColor"] = value
    end

    def shadowoffset(x, y)
      @options["shadowOffset"] = "#{x},#{y}"
    end

    def itemheight(value)
      @options["itemHeight"] = value
    end

    def selectiondisabled(value)
      @options["selectionDisabled"] = value
    end

    def custom(key, value)
      @options[key] = value
    end
  end
end