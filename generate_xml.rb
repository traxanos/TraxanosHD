def render_screen(name, xml)
  puts "render screen #{name}"
  file = "screens/#{name}.rb"
  instance_eval File.read(file), file
end

# Gernerate screens
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
    TraxanosHD.fonts.each do |name, options|
      xml.font name: name, filename: options[:filename], scale: options[:scale]
    end
  end

  xml.subtitles do
    xml.sub name: "Subtitle_TTX",     font: "Share;30",        foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
    xml.sub name: "Subtitle_Regular", font: "Share;30",        foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
    xml.sub name: "Subtitle_Bold",    font: "ShareBold;30",    foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
    xml.sub name: "Subtitle_Italic",  font: "ShareItalic;30",  foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
  end

  xml.windowstyle(id: 0, type: :skinned) do
    xml.color name: :Background, color: :background
    xml.color name: :LabelForeground, color: :foreground
    xml.color name: :ListboxBackground, color: :background
    xml.color name: :ListboxForeground, color: :foreground
    xml.color name: :ListboxSelectedBackground, color: :backgroundAccent2
    xml.color name: :ListboxSelectedForeground, color: :foregroundAccent2
    xml.color name: :ListboxMarkedBackground, color: :backgroundAccent2
    xml.color name: :ListboxMarkedForeground, color: :foregroundAccent2
    xml.color name: :ListboxMarkedAndSelectedBackground, color: :backgroundAccent2
    xml.color name: :ListboxMarkedAndSelectedForeground, color: :foregroundAccent2
    xml.color name: :WindowTitleForeground, color: :foreground
  end

  xml.windowstyle(id: 1, type: :skinned) do
    xml.color name: :Background, color: :background
    xml.color name: :LabelForeground, color: :foreground
    xml.color name: :ListboxBackground, color: :background
    xml.color name: :ListboxForeground, color: :foreground
    xml.color name: :ListboxSelectedBackground, color: :backgroundAccent2
    xml.color name: :ListboxSelectedForeground, color: :foregroundAccent2
    xml.color name: :ListboxMarkedBackground, color: :backgroundAccent2
    xml.color name: :ListboxMarkedForeground, color: :foregroundAccent2
    xml.color name: :ListboxMarkedAndSelectedBackground, color: :backgroundAccent2
    xml.color name: :ListboxMarkedAndSelectedForeground, color: :foregroundAccent2
    xml.color name: :WindowTitleForeground, color: :foreground
  end

  render_screen('SecondInfoBar', xml)
  render_screen('PVRState', xml)
  render_screen('TimeshiftState', xml)
  render_screen('MoviePlayer', xml)
  render_screen('InfoBar', xml)
  render_screen('UnhandledKey', xml)
  render_screen('Volume', xml)
  render_screen('Mute', xml)
  render_screen('AudioSelection', xml)

  render_screen('Menu', xml)
  render_screen('About', xml)
  render_screen('BouquetSelector', xml)
  render_screen('ChannelContextMenu', xml)
  render_screen('ChannelSelection', xml)
  render_screen('ChoiceBox', xml)
  render_screen('Console', xml)
  render_screen('Dish', xml)
  render_screen('DirectoryBrowser', xml)
  render_screen('DeviceManager2', xml)
  render_screen('DeviceManager2Message', xml)
  # EPG
  render_screen('EPGSelection', xml)
  render_screen('EPGSelectionMulti', xml)
  render_screen('EPGSelectionEPGBar_HD', xml)
  render_screen('EventView', xml)
  # GraphMultiEPG
  render_screen('GraphMultiEPG', xml)
  render_screen('GraphMultiEPG1', xml)
  render_screen('GraphMultiEPG2', xml)
  render_screen('GraphMultiEPG3', xml)

  render_screen('HelpMenu', xml)
  render_screen('HarddiskSelection', xml)
  render_screen('LanguageSelection', xml)
  render_screen('LocationBox', xml)
  render_screen('MessageBox', xml)
  render_screen('MyPluginManager', xml)
  render_screen('myPacketManager', xml)

  # MultiQuickButton
  render_screen('QuickButton', xml)
  render_screen('MultiQuickButton', xml)
  render_screen('MultiQuickButtonMacro', xml)

  # MoviePlayer
  render_screen('MovieSelection', xml)
  render_screen('MovieContextMenu', xml)

  render_screen('NimSetup', xml)
  render_screen('NimSelection', xml)
  render_screen('NumberZapExt', xml)
  render_screen('NumberZap', xml)
  render_screen('NumberZapWithName', xml)
  render_screen('NumericalTextInputHelpDialog', xml)
  render_screen('PluginBrowser', xml)
  render_screen('RdsInfoDisplay', xml)
  render_screen('RassInteractive', xml)
  render_screen('PacketManager', xml)
  render_screen('ServiceInfo', xml)
  render_screen('Setup', xml)
  render_screen('SimpleChannelSelection', xml)
  render_screen('SkinSelector', xml)
  xml.screen name: "Standby", title: "Standby", position: "0,0", size: "0,0", backgroundColor: :transparent, flags: :wfNoBorder
  render_screen('Subtitles', xml)
  xml.screen name: "SubtitleDisplay", position: "0,0", size: "#{TraxanosHD.width},#{TraxanosHD.height}", backgroundColor: :transparent, flags: :wfNoBorder, zPosition: -1
  render_screen('TimeDateInput', xml)
  render_screen('TimerEditList', xml)
  render_screen('TimerEntry', xml)
  render_screen('TimerSelection', xml)
  render_screen('TimerSanityConflict', xml)
  render_screen('VirtualKeyBoard', xml)
  render_screen('Ipkg', xml)
  render_screen('UpdatePlugin', xml)
  render_screen('VideoEnhancementPreview', xml)
  render_screen('VideoEnhancementSetup', xml)
  # VTi
  render_screen('VtiNews', xml)
  render_screen('AllNews', xml)
  render_screen('VTIMainMenu', xml)
  render_screen('VTISubMenu', xml)
  render_screen('VTIStatusListMenu', xml)
  render_screen('VTiUpdateInfo', xml)
  render_screen('ReduceMenuConfig', xml)
  render_screen('CamSelectMenu', xml)
  render_screen('BackupSuite', xml)
  render_screen('InfoPanel', xml)


  xml.screen name: "VideoFinetune", position: "0,0", size: "#{TraxanosHD.width},#{TraxanosHD.height}", backgroundColor: :black, zPosition: 100 do
    xml.widget source: "Canvas", render: "Canvas", position: "280,70", size: "720,576"
  end
  # xml.screen name: "Scart", title: "Scart", position: "0,0", size: "0,0", backgroundColor: :transparent, flags: :wfNoBorder, zPosition: -100

  # screens.each do |file|
  #   puts "render screen #{file}"
  #   instance_eval File.read(file), file
  # end


end

# write xml
File.open("skin.xml", "w") do |file|
  file << xml.target!
end

