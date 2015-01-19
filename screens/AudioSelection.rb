TraxanosHD::Screen.new(xml, :AudioSelection, "Audio") do
  position :center, :center
  size 564, 480
  background :background

  label do
    position 12, 12
    size -24, -24

    label do
      position 0, 3
      size 5, 24
      background :red
    end

    label do
      position 0, 33
      size 5, 24
      background :green
    end

    label do
      position 0, 63
      size 5, 24
      background :yellow
    end

    label do
      position 0, 93
      size 5, 24
      background :blue
    end

    widget do
      position 12, 0
      size -12, 270
      name "config"
      itemheight 30
      scrollbars
    end

    label do
      position 0, 270+18
      size nil, 1
      background :white
    end

    template = '{
      "templates": {
        "default": (30, [
          MultiContentEntryText(pos = (0, 0),   size = (35, 30),  font = 0, flags = RT_HALIGN_LEFT, text = 1), # key
          MultiContentEntryText(pos = (40, 0),  size = (60, 30),  font = 0, flags = RT_HALIGN_LEFT, text = 2), # number
          MultiContentEntryText(pos = (110, 0), size = (120, 30), font = 0, flags = RT_HALIGN_LEFT, text = 3), # description
          MultiContentEntryText(pos = (240, 0), size = (200, 30), font = 0, flags = RT_HALIGN_LEFT, text = 4), # language
          MultiContentEntryText(pos = (450, 0), size = (90, 30),  font = 1, flags = RT_HALIGN_RIGHT, text = 5) # selection
        ], True, "showNever" ),
        "notselected": (30, [
          MultiContentEntryText(pos = (0, 0),   size = (35, 30),  font = 0, flags = RT_HALIGN_LEFT, text = 1), # key
          MultiContentEntryText(pos = (40, 0),  size = (60, 30),  font = 0, flags = RT_HALIGN_LEFT, text = 2), # number
          MultiContentEntryText(pos = (110, 0), size = (120, 30), font = 0, flags = RT_HALIGN_LEFT, text = 3), # description
          MultiContentEntryText(pos = (240, 0), size = (200, 30), font = 0, flags = RT_HALIGN_LEFT, text = 4), # language
          MultiContentEntryText(pos = (450, 0), size = (90, 30),  font = 1, flags = RT_HALIGN_RIGHT, text = 5) # selection
        ], False, "showNever" )
      },
      "fonts": [
        gFont("Regular", 20),
        gFont("Regular", 20)
      ],
      "itemHeight": 30
    }'

    widget do
      position 0, 270+18+18
      size nil, 150
      source "streams"
      render "Listbox"
      transparent 1
      convert template, type: "TemplatedMultiContent"
    end

  end


end
