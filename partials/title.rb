class TraxanosHD::Element
  def title(title)
    if title === true or title.class == Symbol
      widget do
        size nil, 48
        transparent 1
        font "SegoeUI", TraxanosHD.default_title_font_size
        orientation :left, :top
        nowrap 1
        source title
        render "Label"
      end
    else
      label do
        size nil, 48
        transparent 1
        font "SegoeUI", TraxanosHD.default_title_font_size
        orientation :left, :top
        nowrap 1
        text title
      end
    end
  end

  def header_title2
    widget do
      position TraxanosHD.spacer, TraxanosHD.default_header_title_top_spacer
      size -(TraxanosHD.spacer*2), 48
      name "header"
      transparent 1
      font "SegoeUI", TraxanosHD.default_title_font_size
      nowrap 1
    end
  end

  def header_title(title)
    if title === true or title.class == Symbol
      widget do
        position TraxanosHD.spacer, TraxanosHD.default_header_title_top_spacer
        size -(TraxanosHD.spacer*2), 48
        transparent 1
        font "SegoeUI", TraxanosHD.default_title_font_size
        nowrap 1
        source title
        render "Label"
      end
    else
      label do
        position TraxanosHD.spacer, TraxanosHD.default_header_title_top_spacer
        size -(TraxanosHD.spacer*2), 48
        transparent 1
        font "SegoeUI", TraxanosHD.default_title_font_size
        nowrap 1
        text title
      end
    end
  end
end