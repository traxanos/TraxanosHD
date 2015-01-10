module TraxanosHD
  class Reference
    attr_accessor :x, :y, :z, :width, :height
    def initialize(x, y, z, width, height, &block)
      @x = x
      @y = y
      @z = z || 0
      @width = width
      @height = height
    end
  end
end