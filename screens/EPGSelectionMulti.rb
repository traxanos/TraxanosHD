TraxanosHD::Screen.new(xml, :EPGSelectionMulti, "EPG selection") do
  header
  main do
    title "EPG Selection"

    widget do
      position 0, 48 + TraxanosHD.spacer
      size nil, 30*14
      itemheight 30
      name "list"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end

  main_accent do
    widget do
      position 67, 0
      size 220, 132
      render "Picon"
      source "Service"
      alphatest "blend"
      accent
      convert "Reference", type: "ServiceName"
      foreground nil
    end

    widget do
      position 0, 150
      size nil, 24
      nowrap 1
      transparent 1
      font "Bold", TraxanosHD.default_right_font_size
      render "Label"
      source "Service"
      accent
      orientation :left, :center
      convert "Name", type: "EventName"
    end

    widget do
      position 0, 192
      size nil, 279
      transparent 1
      font "Regular", TraxanosHD.default_right_font_size
      render "VRunningText"
      config "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap"
      source "Event"
      accent
      convert "ExtendedDescription", type: "EventName"
    end

  end


  box do
    position TraxanosHD.border+TraxanosHD.left_width+TraxanosHD.spacer, 645
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

    label do
      position -(72+TraxanosHD.spacer+66)
      size 66, 30
      text "EPG"
      font "SegoeUI", 20
      nowrap 1
      orientation :center, :center
      background :foregroundAccent
      foreground :backgroundAccent
    end
  end

end





# xml.screen position: "0, 0", size: "1280, 720", backgroundColor: :transparent, flags: :wfNoBorder, name: "EPGSelectionMulti", title: "EPG selection" do
#   # left
#   xml.widget position: "57,219", size: "774,420", name: "list", backgroundColor: :background, itemHeight: 30, scrollbarMode: "showOnDemand", transparent: 1, scrollbarWidth: 6, scrollbarSliderBorderWidth: 0, scrollbarSliderForegroundColor: :foreground, scrollbarSliderBorderColor: :foreground

#   # right
#   xml.widget position: "935,171", size: "220,132", render: "Picon", source: "Service", backgroundColor: :backgroundAccent, alphatest: "blend", zPosition: 10 do
#     xml.convert "Reference", type: "ServiceName"
#   end

#   xml.widget position: "867,321", size: "356,24", valign: :center, halign: :center, backgroundColor: :backgroundAccent, foregroundColor: :foregroundAccent, render: "Label", source: "Service", transparent: 1, font: "Regular; 18", noWrap: 1, zPosition: 10 do
#     xml.convert "Name", type: "ServiceName"
#   end

#   xml.widget position: "867,363", size: "356,255", valign: :top, halign: :left, backgroundColor: :backgroundAccent, foregroundColor: :foregroundAccent, render: "VRunningText", source: "Event", transparent: 1, font: "Regular; 18", options: "movetype=running,startpoint=0,direction=top,steptime=90,repeat=2,always=0,startdelay=5000,wrap", zPosition: 10 do
#     xml.convert "ExtendedDescription", type: "EventName"
#   end

#   xml.eLabel position: "1151,645", size: "72,30", backgroundColor: :foregroundAccent, foregroundColor: :backgroundAccent, text: "MENU", font: "SegoeUI; 20", valign: :center, halign: :center, noWrap: 1

#   partial_colorbar(xml, 645)
#   partial_colorbar_buttons(xml, 645, true, true, true, true)
#   partial_main(xml, "EPG Selection", true)
# end