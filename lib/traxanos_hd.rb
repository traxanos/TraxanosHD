module TraxanosHD
  autoload :Element, 'traxanos_hd/element'
  autoload :Widget, 'traxanos_hd/widget'
  autoload :Label, 'traxanos_hd/label'
  autoload :Pixmap, 'traxanos_hd/pixmap'
  autoload :Screen, 'traxanos_hd/screen'
  autoload :Convert, 'traxanos_hd/convert'
  autoload :Box, 'traxanos_hd/box'
  autoload :Reference, 'traxanos_hd/reference'
  autoload :Progressbar, 'traxanos_hd/progressbar'
  autoload :Images, 'traxanos_hd/images'

  class << self

    def debug
      true
    end

    def beta81
      return true if ENV['beta81'] == "1"
      false
    end

    def width
      1280
    end

    def height
      720
    end

    def grid
      3
    end

    def colors
      @colors ||= {}
    end

    def fonts
      @fonts ||= {}
    end

    def border
      @border ||= grid * 13
    end

    def spacer
      @spacer ||= grid * 6
    end

    def left_width
      @left_width ||= grid * 270
    end

    def right_width
      @right_width ||= 392
    end

    def left_inner_width
      @left_innter_width ||= left_width - (spacer * 2)
    end

    def header_height
      @header_height ||= grid * 23
    end

    def main_height
      @header_height ||= grid * 23
    end

    def item_height
      @item_height ||= grid * 10
    end

    def inner_width
      width - (border * 2)
    end

    def css_color(name)
      if name.present? and colors[name.to_sym].present?
        color = colors[name.to_sym]
          a = ((255 -color.slice(1..2).to_i(16)).to_f / 255).round(2)
          r = color.slice(3..4).to_i(16)
          g = color.slice(5..6).to_i(16)
          b = color.slice(7..8).to_i(16)
          "rgba(#{r}, #{g}, #{b}, #{a}) /* #{color} */ "
      else
        nil
      end
    end

    def default_left_font_size
      20
    end

    def default_right_font_size
      18
    end

    def default_title_font_size
      36
    end

    def default_header_title_top_spacer
      TraxanosHD.spacer-6
    end

  end
end