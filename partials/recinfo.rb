class TraxanosHD::Element
  def recinfo
    widget do
      position TraxanosHD.border, 135
      size 74, 23
      source "session.RecordState"
      foreground nil
      transparent 1
      render "Pixmap"
      image "TraxanosHD/images/rec.png"
      convert "config.usage.blinking_rec_symbol_during_recording,False,CheckSourceBoolean", type: "ConfigEntryTest"
      convert type: "ConditionalShowHide"
    end

    widget do
      position TraxanosHD.border, 135
      size 74, 23
      source "session.RecordState"
      foreground nil
      transparent 1
      render "Pixmap"
      image "TraxanosHD/images/rec.png"
      convert "config.usage.blinking_rec_symbol_during_recording,True,CheckSourceBoolean", type: "ConfigEntryTest"
      convert "Blink", type: "ConditionalShowHide"
    end

  end
end
