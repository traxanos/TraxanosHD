module TraxanosHD
  class Convert
    attr_reader :options, :value
    def initialize(*args)
      @options = args.extract_options!
      @value = args.first
    end

    def render(xml)
      xml.convert value, options
    end
  end
end