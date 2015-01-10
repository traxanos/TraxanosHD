class TraxanosHD::Element
  def recinfo
    widget do
      position TraxanosHD.border, 135
      size 75, 30
      source "session.RecordState"
      text "REC"
      font "Regular", 24
      background nil
      foreground :red
      render "FixedLabel"
      convert type: "ConditionalShowHide"
      transparent 1
    end

    widget do
      position TraxanosHD.border, 135
      size 75, 30
      source "session.RecordState"
      text " "
      font "Regular", 24
      foreground nil
      background :transparent
      render "FixedLabel"
      convert "config.usage.blinking_rec_symbol_during_recording,True,CheckSourceBoolean", type: "ConfigEntryTest"
      convert "Blink", type: "ConditionalShowHide"
    end

  end
end
