module TraxanosHD
  class Box < Element
    def type
      "box"
    end

    def render_preview!(html)
      # render only elements
      html.div "", style: preview_styles
      render_preview_elements!(html)
    end

    def preview_styles
      debug = TraxanosHD.debug
      border = debug ? 2 : 0

      styles = {}
      styles["position"] = :absolute
      styles["top"] = "#{y}px /* #{debug} #{self.class != Screen} */"
      styles["left"] = "#{x}px"
      styles["width"] = "#{width-border}px"
      styles["height"] = "#{height-border}px"
      styles["z-index"] = z
      styles["border"] = "1px solid rgba(255, 0, 0, 0.3)" if debug
      styles.reject { |k, v| v.blank? }.collect { |k, v| "#{k}: #{v}" }.join("; ")
    end

    def render!(xml)
      # render only elements
      render_elements!(xml)
    end
  end
end