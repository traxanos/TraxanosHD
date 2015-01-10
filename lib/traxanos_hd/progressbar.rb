module TraxanosHD
  class Progressbar < Widget
    def after_initialize
      render "Progress"
      transparent 1
      label do
        position 0, height/2, (z - 2)
        size nil, 1
        background :foreground
      end
    end

    def render_preview!(html)
      html.div "", style: "position: absolute; top: #{y}px; left: #{x}px; width: #{width/2}px; height: #{height}px; z-index: #{z}; background-color: #{TraxanosHD.css_color(options["foregroundColor"])}"
      html.div "", style: "position: absolute; top: #{y+(height/2)}px; left: #{x}px; width: #{width}px; height: 1px; z-index: #{z-1}; background-color: #{TraxanosHD.css_color("foreground")}"
    end
  end
end