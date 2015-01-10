TraxanosHD::Screen.new(xml, :LocationBox) do
  header

  main do
    widget do
      size nil, 48
      font "SegoeUI", 36
      orientation :left, :center
      nowrap 1
      transparent 1
      name "text"
    end

    label do
      position 0, 48 + TraxanosHD.spacer
      size nil, 36
      text ""
      font "FontAwesome", 26
      orientation :left, :center
      nowrap 1
      transparent 1
    end

    widget do
      position 33, 48 + TraxanosHD.spacer
      size -33, 36
      name "target"
      font "Regular", 24
      orientation :left, :center
      nowrap 1
      transparent 1
    end

    widget do
      position 0, 48 + TraxanosHD.spacer + 36 + 12
      size nil, 30*6
      itemheight 30
      name "filelist"
      transparent 1
      enablewraparound 1
      selectiondisabled 1
      scrollbars
    end

    label do
      position 0, 48 + TraxanosHD.spacer + 36 + 12 + (30*6) + TraxanosHD.spacer
      size nil, 36
      text ""
      font "FontAwesome", 26
      orientation :left, :center
      nowrap 1
      transparent 1
    end

    widget do
      position 33, 48 + TraxanosHD.spacer + 36 + 12 + (30*6) + TraxanosHD.spacer
      size -33, 36
      name "textbook"
      font "Regular", 24
      orientation :left, :center
      nowrap 1
      transparent 1
    end

    widget do
      position 0, 48 + TraxanosHD.spacer + 36 + 12 + (30*6) + TraxanosHD.spacer + 36 + 12
      size nil, 30*4
      itemheight 30
      name "booklist"
      transparent 1
      enablewraparound 1
      scrollbars
    end
  end

  colorbar do
    colorbar_buttons1(true, true, true, true)
  end
end


# xml.screen position: "0, 0", size: "1280, 720", backgroundColor: :transparent, flags: :wfNoBorder, name: "LocationBox" do
#   xml.widget position: "57,153", size: "774,48", name: "text", transparent: 1, font: "SegoeUI; 36", halign: :left, valign: :top, noWrap: 1, backgroundColor: :background, foregroundColor: :foreground, zPosition: -9

#   xml.eLabel position: "57,219", size: "39,36", font: "FontAwesome; 26", text: "", transparent: 1, halign: :left, valign: :center, noWrap: 1, backgroundColor: :background, foregroundColor: :foreground, zPosition: -9
#   xml.widget position: "90,219", size: "774,36", font: "Regular; 24", name: "target", transparent: 1, halign: :left, valign: :center, noWrap: 1, backgroundColor: :background, foregroundColor: :foreground, zPosition: -9

#   xml.widget position: "57,267", size: "774,#{30*6}", name: "filelist",
#     backgroundColor: :background,
#     selectionDisabled: 1,
#     itemHeight: 30,
#     transparent: 1,
#     scrollbarMode: "showOnDemand",
#     scrollbarWidth: 6,
#     scrollbarSliderBorderWidth: 0,
#     scrollbarSliderForegroundColor: :foreground,
#     scrollbarSliderBorderColor: :background


#   xml.eLabel position: "57,#{267+12+(30*6)}", size: "39,36", font: "FontAwesome; 26", text: "", transparent: 1, halign: :left, valign: :center, noWrap: 1, backgroundColor: :background, foregroundColor: :foreground, zPosition: -9
#   xml.widget position: "90,#{267+12+(30*6)}", size: "300,36", font: "Regular; 24", name: "textbook", transparent: 1, halign: :left, valign: :center, noWrap: 1, backgroundColor: :background, foregroundColor: :foreground, zPosition: -9
#   xml.widget position: "57,#{267+12+(30*6)+36+12}", size: "774,#{30*4}", name: "booklist",
#     backgroundColor: :background,
#     foregroundColor: :foreground,
#     itemHeight: 30,
#     transparent: 1,
#     scrollbarMode: "showOnDemand",
#     scrollbarWidth: 6,
#     scrollbarSliderBorderWidth: 0,
#     scrollbarSliderForegroundColor: :foreground,
#     scrollbarSliderBorderColor: :background

#   partial_colorbar(xml, 645)
#   partial_colorbar_buttons(xml, 645, true, true, true, true)
#   partial_main(xml, false, false)
# end