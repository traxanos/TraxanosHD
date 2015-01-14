module TraxanosHD
  class Element
    attr_reader :options, :converts, :applets

    attr_reader :x
    attr_reader :y
    attr_reader :z
    attr_reader :width
    attr_reader :height
    attr_reader :elements
    attr_reader :parent

    def initialize(parent, &block)
      @parent = parent
      @z = parent_z + parent_elements_count + 1
      @childs = 0

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

    def parent_x
      return 0 if parent.nil? or parent.x.class != Fixnum or parent.class == Screen
      parent.x
    end

    def parent_y
      return 0 if parent.nil? or parent.y.class != Fixnum or parent.class == Screen
      parent.y
    end

    def parent_width
      return 0 if parent.nil? or parent.width.class != Fixnum
      parent.width
    end

    def parent_height
      return 0 if parent.nil? or parent.height.class != Fixnum
      parent.height
    end

    def parent_z
      return 0 if parent.nil? or parent.z.class != Fixnum
      parent.z
    end

    def parent_elements_count
      return 0 if parent.nil?
      parent.elements.count
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
      @options["position"] = "#{@x},#{@y}"
      @options["size"] = "#{@width},#{@height}"
      @options["zPosition"] = "#{@z}"

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
        @x = parent_x + parent_width + x
      else
        @x = parent_x + x
      end

      if y.class == Symbol
        @y = y
      elsif y < 0
        @y = parent_y + parent_height + y
      else
        @y = parent_y + y
      end


      @z = z if z.present?
    end

    def size(width = nil, height = nil)
      if width.nil?
        @width = parent_width
      elsif width < 0
        @width = parent_width + width
      else
        @width = width
      end
      if height.nil?
        @height = parent_height
      elsif height < 0
        @height = parent_height + height
      else
        @height = height
      end
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

    def accent2
      background :backgroundAccent2
      foreground :foregroundAccent2
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
      @elements << Widget.new(self, &block)
    end

    def label(&block)
      @elements << Label.new(self, &block)
    end

    def pixmap(&block)
      @elements << Pixmap.new(self, &block)
    end

    def box(&block)
      @elements << Box.new(self, &block)
    end

    def progressbar(&block)
      @elements << Progressbar.new(self, &block)
    end

    def scrollbars(mode = "showOnDemand")
      options["scrollbarMode"] = mode unless mode.nil?
      options["scrollbarWidth"] = 5
      options["scrollbarSliderBorderWidth"] = 0
      options["scrollbarSliderForegroundColor"] = :foreground
      options["scrollbarSliderBorderColor"] = :foreground
      # options["scrollbarBackgroundPicture"] = "TraxanosHD/images/scrollbar_bg.png"
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