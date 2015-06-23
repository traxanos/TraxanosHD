module TraxanosHD
  class Screen < Element
    attr_reader :xml, :name, :applets

    def initialize(xml, name, title = nil, &block)
      @xml = xml
      @z = 0
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

      render_preview!
    end

    def render!
      puts "render screen #{@name}"
      xml.comment! name.to_s
      @options["position"] = "#{@x},#{@y}"
      @options["size"] = "#{@width},#{@height}"
      @options["zPosition"] = "#{@z}" unless @z.zero?
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

      render_preview!
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

    def flags(flags)
      @options["flags"] = flags
    end

    def applet(event, value)
      @applets[event] = value
    end

  end

end
