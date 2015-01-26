module TraxanosHD
  class Pixmap < Element
    def type
      "ePixmap"
    end
    def after_initialize
      foreground nil
    end
  end
end