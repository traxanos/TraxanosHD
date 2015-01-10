class TraxanosHD::Element
  def title(title)
    if title === true or title.class == Symbol
      widget do
        size nil, 48
        transparent 1
        font "SegoeUI", 36
        orientation :left, :top
        nowrap 1
        source title
        render "Label"
      end
    else
      label do
        size nil, 48
        transparent 1
        font "SegoeUI", 36
        orientation :left, :top
        nowrap 1
        text title
      end
    end
  end
end