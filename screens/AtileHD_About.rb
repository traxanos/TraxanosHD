screen = TraxanosHD::Screen.new(:AtileHD_About, "TraxanosHD") do
  position :center, :center

  size 400, (5*TraxanosHD.spacer) + 48 + 30 + 30 + 30
  background :background

  label do
    position TraxanosHD.spacer, TraxanosHD.spacer
    size -(TraxanosHD.spacer*2), 48
    font "Regular", TraxanosHD.default_title_font_size
    text "TraxanosHD"
    orientation :center, :center
    transparent 1
  end

  label do
    position TraxanosHD.spacer, (2*TraxanosHD.spacer) + 48
    size  -(TraxanosHD.spacer*2), 30
    text "Skin by traxanos"
    transparent 1
    font "Regular", TraxanosHD.default_font_size
    orientation :center, :top
    nowrap 1
  end


  label do
    position TraxanosHD.spacer, (3*TraxanosHD.spacer) + 48 + 30
    size  -(TraxanosHD.spacer*2), 30
    text "Support for Vu+"
    transparent 1
    font "Regular", TraxanosHD.default_font_size
    orientation :center, :top
    nowrap 1
  end

  label do
    position TraxanosHD.spacer, (4*TraxanosHD.spacer) + 48 + 30 + 30
    size  -(TraxanosHD.spacer*2), 30
    text "www.vuplus-support.org"
    transparent 1
    font "Regular", TraxanosHD.default_font_size
    orientation :center, :top
    nowrap 1
  end

end

screen.render!(@main)
