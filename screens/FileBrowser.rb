# xml.screen position: "0, 0", size: "1280, 720", backgroundColor: :transparent, flags: :wfNoBorder, name: "FileBrowser", title: "DVD File Browser" do
#   # left
#   xml.widget position: "57,219", size: "774,#{30*14}", name: "filelist",
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
#   partial_main(xml, "DVD File Browser")
# end