# (de-)installation von paketen
screen = TraxanosHD::Screen.new(:UpdatePlugin, "Software Update...") do

  position :center, :center, 99
  size 510, 12 + 48 + 12 + 5 + 12 + 56 + 12 + 5 + 12 + 12 + 30
  background :background

  label do
    position 12 + 48 + 9, 12
    size -(9 +12 +12 +48), 48
    font "Regular", 26
    text "Installing Software..."
    orientation :left, :center
    transparent 1
  end

  label do
    position 12, 12
    size 48, 48
    text ""
    font "FontAwesome", 30
    orientation :center, :center
    nowrap 1
    transparent 1
  end

  widget do
    position 12, 12 + 48 + 12
    size -24, 30
    font "Regular", TraxanosHD.default_font_size-2
    name "package"
    nowrap 1
    transparent 1
    orientation :left, :center
  end

  label do
    position 12, 12 + 48 + 12 + 30 + 12 + 2
    size -24, 1
    background :foreground
  end

  widget do
    position 12, 12 + 48 + 12 + 30 + 12
    size -24, 5
    name "activityslider"
    foreground :backgroundAccent
    transparent 1
  end

  widget do
    position 12, 12 + 48 + 12 + 5 + 12 + 30 + 12
    size -24, 56
    font "Regular", TraxanosHD.default_font_size-2
    name "status"
    transparent 1
    orientation :center, :center
  end

  label do
    position 12, 12 + 48 + 12 + 5 + 12 + 30 + 12 + 56 + 12 + 2
    size -24, 1
    background :foreground
  end

  widget do
    position 12, 12 + 48 + 12 + 5 + 12 + 30 + 12 + 56 + 12
    size -24, 5
    name "slider"
    foreground :backgroundAccent
    transparent 1
  end

end

screen.render!(@main)
