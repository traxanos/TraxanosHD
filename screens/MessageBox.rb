TraxanosHD::Screen.new(xml, :MessageBox, "Message") do

  position :center, :center, 100
  size 900, 260
  background :background

  widget do
    position 90, 12
    size 798, 300
    font "SegoeUI", 20
    name "text"
    orientation nil, :center
  end

  label do
    position 12, 12
    size 66, 66
    text ""
    font "FontAwesome", 51
    orientation :center, :center
    nowrap 1
    transparent 1
  end

  widget do
    position 12, 0
    size 876,60
    transparent 1
    name "list"
    itemheight 30
  end

  applet "onLayoutFinish", '
from enigma import eSize, ePoint

orgwidth = self.instance.size().width()
orgpos = self.instance.position()

# calc text size
text_size = self["text"].getSize()

text_y = text_size[1]
if text_y &lt; 66:
  text_y = 66

text_size = (text_size[0] + 100, text_y)

# resize text
# self["text"].instance.resize(eSize(*text_size))

inner_size_x = text_size[0] + 66 + 12
outer_size_x = inner_size_x + 12 + 12

list_y = text_size[1] + 12
# min space between icon and list
if list_y &lt; 90:
  list_y = 90

# resize text
self["text"].instance.resize(eSize(*text_size))

# hide list if not YESNO
if self.type == self.TYPE_YESNO:
  list_height = 60

  # calc height
  outer_size_y = list_y + list_height + 12

else:
  list_height = 0

  # calc height
  outer_size_y = list_y


# move list
list_size = (inner_size_x, list_height)
self["list"].instance.move(ePoint(12,list_y))
self["list"].instance.resize(eSize(*list_size))

# todo update icon, but i didnt know how
question = "&#61529;"
error = "&#61546;"
info = "&#61530;"

# resize window
window_size = (outer_size_x, outer_size_y)
self.instance.resize(eSize(*window_size))

# center window
self.instance.move(ePoint(orgpos.x() + (orgwidth - outer_size_x)/2,orgpos.y()))'

end





# xml.screen position: "center,center", size: "900,260", backgroundColor: :background, flags: :wfNoBorder, name: "MessageBox", title: "Message", zPosition: 999 do
#   xml.widget position: "90,12", size: "798,300", font: "SegoeUI; 20", name: "text", backgroundColor: :background, foregroundColor: :foreground, valign: :center
#   xml.widget position: "12,0", size: "876,60", transparent: 1, itemHeight: 30, name: "list"
#   xml.eLabel position: "12,12", size: "66,66", text: "", font: 'FontAwesome; 51', valign: :center, halign: :center, noWrap: 1, backgroundColor: :background, foregroundColor: :foreground, transparent: 1, zPosition: -9


#   layout_finish = '
# from enigma import eSize, ePoint

# orgwidth = self.instance.size().width()
# orgpos = self.instance.position()

# # calc text size
# text_size = self["text"].getSize()

# text_y = text_size[1]
# if text_y &lt; 66:
#   text_y = 66

# text_size = (text_size[0] + 100, text_y)

# # resize text
# # self["text"].instance.resize(eSize(*text_size))

# inner_size_x = text_size[0] + 66 + 12
# outer_size_x = inner_size_x + 12 + 12

# list_y = text_size[1] + 12
# # min space between icon and list
# if list_y &lt; 90:
#   list_y = 90

# # resize text
# self["text"].instance.resize(eSize(*text_size))

# # hide list if not YESNO
# if self.type == self.TYPE_YESNO:
#   list_height = 60

#   # calc height
#   outer_size_y = list_y + list_height + 12

# else:
#   list_height = 0

#   # calc height
#   outer_size_y = list_y


# # move list
# list_size = (inner_size_x, list_height)
# self["list"].instance.move(ePoint(12,list_y))
# self["list"].instance.resize(eSize(*list_size))

# # todo update icon, but i didnt know how
# question = "&#61529;"
# error = "&#61546;"
# info = "&#61530;"

# # resize window
# window_size = (outer_size_x, outer_size_y)
# self.instance.resize(eSize(*window_size))

# # center window
# self.instance.move(ePoint(orgpos.x() + (orgwidth - outer_size_x)/2,orgpos.y()))'


#   xml.applet type: "onLayoutFinish" do
#     xml << layout_finish
#   end
# end