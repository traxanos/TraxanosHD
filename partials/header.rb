class TraxanosHD::Element
  def header
    box do # border
      position TraxanosHD.border, TraxanosHD.border
      size TraxanosHD.inner_width, TraxanosHD.header_height
      clock
      weather
    end
  end
end