TraxanosHD::Screen.new(xml, :GraphMultiEPG1, "EPG selection") do
  header do
    header_title :Title
  end
  main true do
    box do
      size nil, 480
      graphepg
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end

  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645+6
    size TraxanosHD.right_width-(TraxanosHD.spacer*2), 30

    label do
      position -72
      size 72, 30
      text "MENU"
      font "SegoeUI", 20
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end
end