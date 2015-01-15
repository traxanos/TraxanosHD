# (de-)installation von paketen
TraxanosHD::Screen.new(xml, :Ipkg, "Installing Software...") do
  position :center, :center

  size 510, 12 + 48 + 12 + 5 + 12 + 56 + 12 + 5 + 12
  background :background

  label do
    position 12 + 48 + 9, 15
    size -(9 +12 +12 +48), 38
    font "SegoeUI", 26
    text "Installing Software..."
  end

  label do
    position 12, 12
    size 48, 48
    text ""
    font "FontAwesome", 30
    orientation :center, :center
    nowrap 1
  end

  label do
    position 12, 12 + 48 + 2 + 12
    size -24, 1
    background :foreground
  end

  widget do
    position 12, 12 + 48 + 12
    size -24, 5
    name "slider"
    foreground :backgroundAccent
    transparent 1
  end

  widget do
    position 12, 12 + 48 + 12 + 5 + 12
    size -24, 56
    font "Regular", 20
    name "status"
  end

  label do
    position 12, 12 + 48 + 12 + 5 + 12 + 56 + 12 + 2
    size -24, 1
    background :foreground
  end

  widget do
    position 12, 12 + 48 + 12 + 5 + 12 + 56 + 12
    size -24, 5
    name "activityslider"
    foreground :backgroundAccent
    transparent 1
  end

end