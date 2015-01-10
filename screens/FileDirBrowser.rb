# xml.screen position: "0, 0", size: "1280, 720", backgroundColor: :transparent, flags: :wfNoBorder, name: "FileDirBrowser", title: "File Browser" do
#   xml.widget position: "57,219", size: "774,48", name: "current_selection", font: "Regular; 20", backgroundColor: :background, foregroundColor: :foreground, transparent: 1
#   # left
#   xml.widget position: "57,285", size: "708,#{30*14}", name: "filelist",
#     backgroundColor: :background,
#     itemHeight: 30,
#     transparent: 1,
#     scrollbarMode: "showOnDemand",
#     scrollbarWidth: 6,
#     scrollbarSliderBorderWidth: 0,
#     scrollbarSliderForegroundColor: :foreground,
#     scrollbarSliderBorderColor: :background

#   partial_colorbar(xml, 645)
#   partial_colorbar_buttons2(xml, 645, true, true, false, false)
#   partial_main(xml, :Title)
# end