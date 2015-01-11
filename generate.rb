#!env ruby
$:.unshift File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'builder'
require 'active_support/all'
require 'traxanos_hd'

# load partial
Dir.glob("./partials/*.rb").each do |file|
  require file
end

dark = true

# 6c0aab
colors = {}
TraxanosHD.colors[:subtitle]          = "\#00dcdcdc"
TraxanosHD.colors[:transparent]       = "\#ff000000"
TraxanosHD.colors[:transpBlack]       = "\#80000000"
TraxanosHD.colors[:transpWhite]       = "\#77ffffff"
TraxanosHD.colors[:white]             = "\#00ffffff"
TraxanosHD.colors[:black]             = "\#00000000"
TraxanosHD.colors[:green]             = "\#00389416"
TraxanosHD.colors[:yellow]            = "\#00e5b243"
TraxanosHD.colors[:red]               = "\#00f23d21"
TraxanosHD.colors[:blue]              = "\#000064c7"
TraxanosHD.colors[:orange]            = "\#00f47d19"
if dark
  TraxanosHD.colors[:background]        = "\#10101010"
  TraxanosHD.colors[:foreground]        = "\#00bbbbbb"
  TraxanosHD.colors[:shadow]            = "\#10202020"
else
  TraxanosHD.colors[:background]        = "\#10bbbbbb"
  TraxanosHD.colors[:foreground]        = "\#00000000"
  TraxanosHD.colors[:shadow]            = "\#10A0A0A0"
end
TraxanosHD.colors[:foregroundAccent]  = "\#00bbbbbb"
TraxanosHD.colors[:backgroundAccent]  = "\#106c0aab"
TraxanosHD.colors[:graphepgBGNormal]  = "\#10888888"
TraxanosHD.colors[:graphepgFGNormal]  = "\#00222222"
TraxanosHD.colors[:graphepgBGNow]     = "\#10bbbbbb"
TraxanosHD.colors[:graphepgFGNow]     = "\#00222222"
if dark
  TraxanosHD.colors[:channelSelection2]       = TraxanosHD.colors[:white]
  TraxanosHD.colors[:channelSelection2Select] = TraxanosHD.colors[:white]
else
  TraxanosHD.colors[:channelSelection2]       = TraxanosHD.colors[:foreground]
  TraxanosHD.colors[:channelSelection2Select] = TraxanosHD.colors[:background]
end

colors = TraxanosHD.colors

fonts = {}
fonts[:LCD]       = { scale: 100, filename: 'lcd.ttf' }
fonts[:Console]   = { scale: 100, filename: 'nmsbd.ttf' }
fonts[:Bold]      = { scale: 100, filename: 'TraxanosHD/fonts/OpenSans-Bold.ttf' }
fonts[:Regular]   = { scale: 100, filename: 'TraxanosHD/fonts/OpenSans-Regular.ttf' }
fonts[:Light]     = { scale:  80, filename: 'TraxanosHD/fonts/OpenSans-Light.ttf' }
fonts[:Italic]    = { scale:  80, filename: 'TraxanosHD/fonts/OpenSans-Italic.ttf' }
fonts[:SegoeUI]   = { scale: 100, filename: 'TraxanosHD/fonts/SegoeUI.ttf' }
fonts[:Meteocons] = { scale: 100, filename: 'TraxanosHD/fonts/Meteocons.ttf' }
fonts[:FontAwesome]   = { scale: 100, filename: 'TraxanosHD/fonts/FontAwesome.ttf' }


xml = Builder::XmlMarkup.new indent: 2
xml.instruct! :xml, encoding: "ASCII"
xml.comment! "TraxanosHD by traxanos | optimized for VTI"
xml.comment! "inspired by MetrixHD (by iMaxxx) and AtileHD"
xml.comment! "recommended to use with XPicons in picon folder"

xml.skin do

  xml.output(id: 0) do
    xml.resolution bpp: 32, xres: 1280, yres: 720
  end

  xml.colors do
    TraxanosHD.colors.each do |name, value|
      xml.color value: value, name: name
    end
  end

  xml.fonts do
    fonts.each do |name, options|
      xml.font name: name, filename: options[:filename], scale: options[:scale]
    end
  end

  xml.subtitles do
    xml.sub name: "Subtitle_TTX",     font: "Regular;30", foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "3,3"
    xml.sub name: "Subtitle_Regular", font: "Regular;30", foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "3,3"
    xml.sub name: "Subtitle_Bold",    font: "Bold;30",    foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "3,3"
    xml.sub name: "Subtitle_Italic",  font: "Italic;30",  foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "3,3"
  end

  xml.windowstyle(id: 0, type: :skinned) do
    xml.color name: :Background, color: :background
    xml.color name: :LabelForeground, color: :foreground
    xml.color name: :ListboxBackground, color: :background
    xml.color name: :ListboxForeground, color: :foreground
    xml.color name: :ListboxSelectedBackground, color: :backgroundAccent
    xml.color name: :ListboxSelectedForeground, color: :foregroundAccent
    xml.color name: :ListboxMarkedBackground, color: :backgroundAccent
    xml.color name: :ListboxMarkedForeground, color: :foregroundAccent
    xml.color name: :ListboxMarkedAndSelectedBackground, color: :backgroundAccent
    xml.color name: :ListboxMarkedAndSelectedForeground, color: :foregroundAccent
    xml.color name: :WindowTitleForeground, color: :foreground
  end

  xml.windowstyle(id: 1, type: :skinned) do
    xml.color name: :Background, color: :background
    xml.color name: :LabelForeground, color: :foreground
    xml.color name: :ListboxBackground, color: :background
    xml.color name: :ListboxForeground, color: :foreground
    xml.color name: :ListboxSelectedBackground, color: :backgroundAccent
    xml.color name: :ListboxSelectedForeground, color: :foregroundAccent
    xml.color name: :ListboxMarkedBackground, color: :backgroundAccent
    xml.color name: :ListboxMarkedForeground, color: :foregroundAccent
    xml.color name: :ListboxMarkedAndSelectedBackground, color: :backgroundAccent
    xml.color name: :ListboxMarkedAndSelectedForeground, color: :foregroundAccent
    xml.color name: :WindowTitleForeground, color: :foreground
  end

  xml.windowstylescrollbar do
    xml.value name: "ScrollbarWidth", value: "5"
    xml.value name: "ScrollbarBorderWidth", value: "0"
    xml.value name: "ScrollbarWidth", value: "5"
    # xml.pixmap name: "BackgroundPixmap", filename: "TraxanosHD/scrollbar_bg.png"
    # xml.pixmap name: "ValuePixmap", filename: "TraxanosHD/scrollbar.png"
  end

  # load screens
  # eval File.read("./screens/Mute.rb")
  Dir.glob("./screens/*.rb").each do |file|
    puts "render screen #{file}"
    instance_eval File.read(file), file
  end

  # specials
  # xml.screen position: "200,200", size: "720,576", backgroundColor: :orange, flags: :wfNoBorder, name: "SubtitleDisplay", zPosition: -10
  xml.screen position: "0,0", size: "0,0", backgroundColor: :transparent, flags: :wfNoBorder, name: "Standby", title: "Standby", zPosition: -90
  xml.screen position: "0,0", size: "0,0", backgroundColor: :transparent, flags: :wfNoBorder, name: "Scart", title: "Scart", zPosition: -90

end

File.open("skin.xml", "w") do |file|
  skin = xml.target!
  file << skin
  #puts skin
end