screen = TraxanosHD::Screen.new(xml, :AutoTimerWizard, "Welcome...") do
  header do
    header_title "Setup"
  end

  main do
    widget do
      position 0, 0
      name "text"
      size nil, 6 * 30
      transparent 1
      font "Regular", TraxanosHD.default_font_size
    end

    widget do
      source "list"
      position 0, 7 * 30
      size nil, 10 * 30
      render "Listbox"
      scrollbars
      transparent 1
      convert type: "StringList"
    end

    widget do
      position 0, 7 * 30
      size nil, 10 * 30
      name "config"
      transparent 1
      scrollbars
    end
  end

  widget do
    position TraxanosHD.border+TraxanosHD.left_width, 135+6, -10
    size 1, 1
    name "HelpWindow"
    image "skin_default/buttons/key_text.png"
    transparent 1
    alphatest "on"
    foreground nil
  end

  main_accent do
  end

  widget do
    position 968, 159, 10
    size 154, 500
    name "rc"
    alphatest "blend"
    images "skin_default/rc_vu_1.png,skin_default/rc_vu_2.png,skin_default/rc_vu_3.png"
    foreground nil
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "TraxanosHD/images/arrowdown.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowdown"
    foreground nil
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "TraxanosHD/images/arrowdown.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowdown2"
    foreground nil
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "TraxanosHD/images/arrowup.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowup"
    foreground nil
  end

  widget do
    position 0, 0, 11
    size 37, 70
    image "TraxanosHD/images/arrowup.png"
    alphatest "on"
    custom "position", "-100, -100"
    name "arrowup2"
    foreground nil
  end

end

screen.render!
