
# base
TraxanosHD.colors[:subtitle]          = "\#00dcdcdc"
TraxanosHD.colors[:transparent]       = "\#ff000000"
TraxanosHD.colors[:transpBlack]       = "\#80000000"
TraxanosHD.colors[:transpWhite]       = "\#77ffffff"
TraxanosHD.colors[:white]             = "\#00ffffff"
TraxanosHD.colors[:black]             = "\#00000000"
TraxanosHD.colors[:grey]              = "\#00bbbbbb"
TraxanosHD.colors[:green]             = "\#00389416"
TraxanosHD.colors[:yellow]            = "\#00e5b243"
TraxanosHD.colors[:red]               = "\#00e91515"
TraxanosHD.colors[:blue]              = "\#000064c7"
TraxanosHD.colors[:orange]            = "\#00f47d19"
TraxanosHD.colors[:shadow]            = "\#10202020"

# main colors
TraxanosHD.colors[:background]        = "\#1A101010"
TraxanosHD.colors[:foreground]        = "\#00bbbbbb"
TraxanosHD.colors[:foregroundAccent]  = "\#10bbbbbb"
TraxanosHD.colors[:backgroundAccent]  = "\#10333333"
TraxanosHD.colors[:selectionBG]       = "\#10666666"
TraxanosHD.colors[:selectionFG]       = "\#00bbbbbb"

# graphepg
TraxanosHD.colors[:graphepgBorder]          = "\#1A101010"
TraxanosHD.colors[:graphepgBGNormal]        = "\#10bbbbbb"
TraxanosHD.colors[:graphepgFGNormal]        = "\#00222222"
TraxanosHD.colors[:graphepgBGNow]           = "\#10888888"
TraxanosHD.colors[:graphepgFGNow]           = "\#00222222"
TraxanosHD.colors[:channelSelection2]       = "\#00ffffff"
TraxanosHD.colors[:channelSelection2Select] = "\#00ffffff"

TraxanosHD.colors[:progressbarPrimaryBG]    = "\#10bbbbbb"
TraxanosHD.colors[:progressbarPrimaryFG]    = "\#00bbbbbb"
TraxanosHD.colors[:progressbarSecondaryBG]  = "\#10bbbbbb"
TraxanosHD.colors[:progressbarSecondaryFG]  = "\#00bbbbbb"
TraxanosHD.colors[:scrollbarSecondaryBG]    = "\#10bbbbbb"
TraxanosHD.colors[:scrollbarSecondaryFG]    = "\#00bbbbbb"

if ENV['light'] == "1"
  TraxanosHD.colors[:foreground]            = "\#00111111"
  TraxanosHD.colors[:background]            = "\#10E0E0E0"
  TraxanosHD.colors[:foregroundAccent]      = "\#00bbbbbb"
  TraxanosHD.colors[:backgroundAccent]      = "\#10555555"
  TraxanosHD.colors[:progressbarPrimaryFG]  = "\#00333333"
  TraxanosHD.colors[:progressbarPrimaryBG]  = "\#00333333"
  TraxanosHD.colors[:progressbarSecondaryBG]  = "\#00C0C0C0"
  TraxanosHD.colors[:scrollbarSecondaryBG]    = "\#00000000"
  TraxanosHD.colors[:scrollbarSecondaryFG]    = "\#00555555"
  TraxanosHD.colors[:channelSelection2]       = "\#00555555"
  TraxanosHD.colors[:channelSelection2Select] = "\#00ffffff"

  TraxanosHD.colors[:graphepgBGNormal]        = "\#10888888"
  TraxanosHD.colors[:graphepgFGNormal]        = "\#00bbbbbb"
  TraxanosHD.colors[:graphepgBGNow]           = "\#10bbbbbb"
  TraxanosHD.colors[:graphepgFGNow]           = "\#00222222"
end

if ENV['violett'] == "1"
  TraxanosHD.colors[:foregroundAccent]      = "\#00bbbbbb"
  TraxanosHD.colors[:backgroundAccent]      = "\#106c0aab"
  TraxanosHD.colors[:progressbarPrimaryFG]  = "\#106c0aab"
  TraxanosHD.colors[:selectionBG]           = "\#106c0aab"
end

if ENV['green'] == "1"
  TraxanosHD.colors[:foregroundAccent]      = "\#00bbbbbb"
  TraxanosHD.colors[:backgroundAccent]      = "\#10007100"
  TraxanosHD.colors[:progressbarPrimaryFG]  = "\#10007100"
  TraxanosHD.colors[:selectionBG]           = "\#10007100"
end

if ENV['blue'] == "1"
  TraxanosHD.colors[:foregroundAccent]      = "\#00bbbbbb"
  TraxanosHD.colors[:backgroundAccent]      = "\#100050EF"
  TraxanosHD.colors[:progressbarPrimaryFG]  = "\#100050EF"
  TraxanosHD.colors[:selectionBG]           = "\#100050EF"
end

if ENV['red'] == "1"
  TraxanosHD.colors[:foregroundAccent]      = "\#00bbbbbb"
  TraxanosHD.colors[:backgroundAccent]      = "\#10911d10"
  TraxanosHD.colors[:progressbarPrimaryFG]  = "\#10911d10"
  TraxanosHD.colors[:selectionBG]           = "\#10911d10"
  TraxanosHD.colors[:selectionFG]           = "\#00bbbbbb"
end

TraxanosHD.fonts[:LCD]         = { scale: 100, filename: 'lcd.ttf' }
TraxanosHD.fonts[:Console]     = { scale: 100, filename: 'nmsbd.ttf' }
TraxanosHD.fonts[:Meteocons]   = { scale: 100, filename: 'TraxanosHD/fonts/Meteocons.ttf' }
TraxanosHD.fonts[:FontAwesome] = { scale: 100, filename: 'TraxanosHD/fonts/FontAwesome.ttf' }

TraxanosHD.fonts[:Light]       = { scale: 100, filename: 'TraxanosHD/fonts/ShareTech-Regular.ttf' }
TraxanosHD.fonts[:Bold]        = { scale: 140, filename: 'TraxanosHD/fonts/ShareTech-Regular.ttf' }
TraxanosHD.fonts[:Italic]      = { scale: 100, filename: 'TraxanosHD/fonts/ShareTech-Regular.ttf' }
TraxanosHD.fonts[:Share]       = { scale: 100, filename: 'TraxanosHD/fonts/ShareTech-Regular.ttf' }
TraxanosHD.fonts[:Regular]     = { scale: 120, filename: 'TraxanosHD/fonts/ShareTech-Regular.ttf' }


