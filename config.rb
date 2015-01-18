dark = true

TraxanosHD.colors[:subtitle]          = "\#00dcdcdc"
TraxanosHD.colors[:transparent]       = "\#ff000000"
TraxanosHD.colors[:transpBlack]       = "\#80000000"
TraxanosHD.colors[:transpWhite]       = "\#77ffffff"
TraxanosHD.colors[:white]             = "\#00ffffff"
TraxanosHD.colors[:black]             = "\#00000000"
TraxanosHD.colors[:green]             = "\#00389416"
TraxanosHD.colors[:yellow]            = "\#00e5b243"
TraxanosHD.colors[:red]               = "\#00e91515"
TraxanosHD.colors[:blue]              = "\#000064c7"
TraxanosHD.colors[:orange]            = "\#00f47d19"
TraxanosHD.colors[:logobg]            = "\#10202020"

if dark
  TraxanosHD.colors[:background]        = "\#10101010"
  TraxanosHD.colors[:foreground]        = "\#00bbbbbb"
  TraxanosHD.colors[:shadow]            = "\#10202020"
else
  TraxanosHD.colors[:background]        = "\#10bbbbbb"
  TraxanosHD.colors[:foreground]        = "\#00000000"
  TraxanosHD.colors[:shadow]            = "\#10A0A0A0"
end
TraxanosHD.colors[:foregroundAccent]    = "\#00bbbbbb"
TraxanosHD.colors[:backgroundAccent]    = "\#106c0aab"

# TraxanosHD.colors[:foregroundAccent]    = "\#00303030"
# TraxanosHD.colors[:backgroundAccent]    = "\#10747474"

TraxanosHD.colors[:graphepgBGNormal]    = "\#10888888"
TraxanosHD.colors[:graphepgFGNormal]    = "\#00222222"
TraxanosHD.colors[:graphepgBGNow]       = "\#10bbbbbb"
TraxanosHD.colors[:graphepgFGNow]       = "\#00222222"
TraxanosHD.colors[:foregroundAccent2]   = "\#10bbbbbb"
TraxanosHD.colors[:backgroundAccent2]   = "\#006c0aab"
if dark
  TraxanosHD.colors[:channelSelection2]       = TraxanosHD.colors[:white]
  TraxanosHD.colors[:channelSelection2Select] = TraxanosHD.colors[:white]
else
  TraxanosHD.colors[:channelSelection2]       = TraxanosHD.colors[:foreground]
  TraxanosHD.colors[:channelSelection2Select] = TraxanosHD.colors[:background]
end


if ENV['grey'] == "1"
  TraxanosHD.colors[:background]        = "\#10111111"
  TraxanosHD.colors[:foreground]        = "\#00bbbbbb"
  TraxanosHD.colors[:shadow]            = "\#10202020"
  TraxanosHD.colors[:foregroundAccent]  = "\#10bbbbbb"
  TraxanosHD.colors[:backgroundAccent]  = "\#10333333"
  TraxanosHD.colors[:logobg]            = "\#10333333"
  TraxanosHD.colors[:foregroundAccent2] = "\#10bbbbbb"
  TraxanosHD.colors[:backgroundAccent2] = "\#00333333"
end

TraxanosHD.fonts[:LCD]         = { scale: 100, filename: 'lcd.ttf' }
TraxanosHD.fonts[:Console]     = { scale: 100, filename: 'nmsbd.ttf' }
TraxanosHD.fonts[:Meteocons]   = { scale: 100, filename: 'TraxanosHD/fonts/Meteocons.ttf' }
TraxanosHD.fonts[:FontAwesome] = { scale: 100, filename: 'TraxanosHD/fonts/FontAwesome.ttf' }
TraxanosHD.fonts[:Regular]     = { scale: 100, filename: 'TraxanosHD/fonts/OpenSans-Regular.ttf' }
TraxanosHD.fonts[:Light]       = { scale: 100, filename: 'TraxanosHD/fonts/OpenSans-Light.ttf' }
TraxanosHD.fonts[:Bold]        = { scale: 100, filename: 'TraxanosHD/fonts/OpenSans-Bold.ttf' }
TraxanosHD.fonts[:Italic]      = { scale: 100, filename: 'TraxanosHD/fonts/OpenSans-Italic.ttf' }
TraxanosHD.fonts[:Share]       = { scale: 100, filename: 'TraxanosHD/fonts/Share-Regular.ttf' }


