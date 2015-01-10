module TraxanosHD
  class Screen < Element
    attr_reader :xml, :name, :applets

    # attr_reader :x
    # attr_reader :y
    # attr_reader :z
    # attr_reader :width
    # attr_reader :height

    def initialize(xml, name, title = nil, &block)
      @parent_ref = Reference.new(0, 0, -999, TraxanosHD.width, TraxanosHD.height)
      @ref = Reference.new(0, 0, -999, 0, 0)
      @xml = xml
      @elements = []
      @applets = {}

      @options = {}
      @options[:name] = @name = name
      @options[:title] = title

      # defaults
      position(0, 0)
      size(TraxanosHD.width, TraxanosHD.height)
      flags(:wfNoBorder)
      background(:transparent)

      # eval bock
      instance_eval(&block)

      # render
      render!

      # render preview
      render_preview!
    end

    def render!
      xml.screen(options.reject { |k, v| v.blank? }) do |xml|
        elements.each do |element|
          element.render!(xml)
        end
        applets.each do |type, content|
          xml.applet type: type do
            xml << content
          end
        end
      end
    end

    def render_preview!
      html = Builder::XmlMarkup.new indent: 2
      html.declare! :DOCTYPE, :html
      html.html do
        html.head do
          html.title name.to_s
          html.meta charset: "utf-8"
        end
        html.body do
          html.div style: "position: absolute; left: 0px; top: 0px; z-index: -999; width: #{TraxanosHD.width}px; height: #{TraxanosHD.height}px;background-image: url(background.jpg)" do
          end

          html.div style: preview_styles do
            elements.each do |element|
              element.render_preview!(html)
            end
          end
        end
      end

      File.open("preview/#{name}.html", "w") do |file|
        file << html.target!
      end

    end

    def parent_ref
      @parent_ref
    end

    def flags(flags)
      @options["flags"] = flags
    end

    def applet(event, value)
      @applets[event] = value
    end

  end

end