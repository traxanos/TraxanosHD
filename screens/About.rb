TraxanosHD::Screen.new(xml, :About, "About") do
  header
  main do
    widget do
      size nil, 48
      render "VtiImageVersion"
      source "session.CurrentService"
      transparent 1
      font "SegoeUI", 36
      orientation :left, :top
      nowrap 1
    end

    widget do
      position 0, 48
      size nil, 30
      render "Label"
      source "EnigmaVersion"
      transparent 1
      font "Regular", 20
      orientation :left, :top
      nowrap 1
    end

    widget do
      position 0, 48 + 30
      size nil, 30
      render "Label"
      source "ImageVersion"
      transparent 1
      font "Regular", 20
      orientation :left, :top
      nowrap 1
    end

    widget do
      position 0, 48 + 30 + 30
      size nil, 30
      render "Label"
      source "FPVersion"
      transparent 1
      font "Regular", 20
      orientation :left, :top
      nowrap 1
    end

    box do
      position 0, 48 + 30 + 30 + 30 + 10
      size nil, 106

      widget do
        position 0, 0
        size nil, 36
        render "Label"
        source "HDDHeader"
        transparent 1
        font "Regular", 24
        orientation :left, :top
        nowrap 1
      end

      widget do
        position 0, 46
        size nil, 60
        render "Label"
        source "hddA"
        transparent 1
        font "Regular", 20
        orientation :left, :top
        nowrap 1
      end
    end


    box do
      position 0, 48 + 30 + 30 + 30 + 10 + 106 + 10
      size nil, 166

      widget do
        position 0, 0
        size nil, 36
        render "Label"
        source "TunerHeader"
        transparent 1
        font "Regular", 24
        orientation :left, :top
        nowrap 1
      end

      widget do
        position 0, 46 + 0
        size nil, 30
        render "Label"
        source "Tuner0"
        transparent 1
        font "Regular", 20
        orientation :left, :top
        nowrap 1
      end

      widget do
        position 0, 46 + 30
        size nil, 30
        render "Label"
        source "Tuner1"
        transparent 1
        font "Regular", 20
        orientation :left, :top
        nowrap 1
      end

      widget do
        position 0, 46 + 30 + 30
        size nil, 30
        render "Label"
        source "Tuner2"
        transparent 1
        font "Regular", 20
        orientation :left, :top
        nowrap 1
      end

      widget do
        position 0, 46 + 30 + 30 + 30
        size nil, 30
        render "Label"
        source "Tuner3"
        transparent 1
        font "Regular", 20
        orientation :left, :top
        nowrap 1
      end
    end

    label do
      position 0, -(30+30)
      size nil, 30
      text "Support for Vu+"
      transparent 1
      font "Regular", 20
      orientation :left, :top
      nowrap 1
    end

    label do
      position 0, -30
      size nil, 30
      text "www.vuplus-support.org"
      transparent 1
      font "Regular", 20
      orientation :left, :top
      nowrap 1
    end

    label do
      position 0, -30
      size nil, 30
      text "Skin by traxanos"
      transparent 1
      font "Regular", 20
      orientation :right, :top
      nowrap 1
    end

  end
end