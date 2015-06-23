screen = TraxanosHD::Screen.new(xml, :ChoiceBox, "Input") do

  position :center, :center, 99
  size 780, 260
  background :background

  widget do
    position 12 + 48 + 9, 15
    size -(9 +12 +12 +48), 38
    font "Regular", 26
    name "text"
    orientation :left, :center
  end

  label do
    position 12, 12
    size 48, 48
    text ""
    font "FontAwesome", 30
    orientation :center, :center
    nowrap 1
  end

  widget do
    position 12, 48 +12 +12
    size -(12 +12), -12-48-12-12
    scrollbars
    enablewraparound 1
    transparent 1
    name "list"
    itemheight 30
  end

  applet "onLayoutFinish", "
from enigma import eSize, ePoint

count = len(self.list)
if count &gt; 10:
  count = 10
y = 30 * count

# correct height
self[\"list\"].instance.resize(eSize(self[\"list\"].instance.size().width(), y))

# resize window
self.instance.resize(eSize(self.instance.size().width(), y + 12 + 12 + 12 + 48))
"

end

screen.render!
