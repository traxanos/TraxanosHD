def render_screen(name)
  file = "screens/#{name}.rb"
  instance_eval File.read(file), file
end

def build_xml_for_variant
  xml
end

def build_skin_to_file(subxml, filename)
  xml = Builder::XmlMarkup.new indent: 2
  xml.instruct! :xml, encoding: "ASCII"
  xml.comment! "TraxanosHD by traxanos | optimized for VTI"
  xml.comment! "inspired by MetrixHD (by iMaxxx) and AtileHD"
  xml.comment! "recommended to use with XPicons in picon folder"
  xml.skin do |xml|
    xml << subxml.target!
  end

  File.open(filename, "w") do |file|
    file << xml.target!
  end
end

@main = Builder::XmlMarkup.new indent: 2, margin: 1
@logoleft = Builder::XmlMarkup.new indent: 2, margin: 1

@main.output(id: 0) do |xml|
  xml.resolution bpp: 32, xres: 1280, yres: 720
end

@main.colors do |xml|
  TraxanosHD.colors.each do |name, value|
    @main.color value: value, name: name
  end
end

@main.fonts do |xml|
  TraxanosHD.fonts.each do |name, options|
    xml.font name: name, filename: options[:filename], scale: options[:scale]
  end
end

@main.windowstyle(id: 0, type: :skinned) do |xml|
  xml.color name: :Background, color: :background
  xml.color name: :LabelForeground, color: :foreground
  xml.color name: :ListboxBackground, color: :background
  xml.color name: :ListboxForeground, color: :foreground
  xml.color name: :ListboxSelectedBackground, color: :selectionBG
  xml.color name: :ListboxSelectedForeground, color: :selectionFG
  xml.color name: :ListboxMarkedBackground, color: :selectionBG
  xml.color name: :ListboxMarkedForeground, color: :selectionFG
  xml.color name: :ListboxMarkedAndSelectedBackground, color: :selectionBG
  xml.color name: :ListboxMarkedAndSelectedForeground, color: :selectionFG
  xml.color name: :WindowTitleForeground, color: :foreground
end

@main.windowstyle(id: 1, type: :skinned) do |xml|
  xml.color name: :Background, color: :background
  xml.color name: :LabelForeground, color: :foreground
  xml.color name: :ListboxBackground, color: :background
  xml.color name: :ListboxForeground, color: :foreground
  xml.color name: :ListboxSelectedBackground, color: :selectionBG
  xml.color name: :ListboxSelectedForeground, color: :selectionFG
  xml.color name: :ListboxMarkedBackground, color: :selectionBG
  xml.color name: :ListboxMarkedForeground, color: :selectionFG
  xml.color name: :ListboxMarkedAndSelectedBackground, color: :selectionBG
  xml.color name: :ListboxMarkedAndSelectedForeground, color: :selectionFG
  xml.color name: :WindowTitleForeground, color: :foreground
end

@main.subtitles do |xml|
  xml.sub name: "Subtitle_TTX",     font: "Share;30",        foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
  xml.sub name: "Subtitle_Regular", font: "Share;30",        foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
  xml.sub name: "Subtitle_Bold",    font: "ShareBold;30",    foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
  xml.sub name: "Subtitle_Italic",  font: "ShareItalic;30",  foregroundColor: :subtitle, shadowColor: :shadow, shadowOffset: "2,2"
end

# screens
render_screen('SecondInfoBar')
render_screen('PVRState')
render_screen('TimeshiftState')
render_screen('MoviePlayer')
render_screen('EMCMediaCenter')
render_screen('InfoBar')
render_screen('UnhandledKey')
render_screen('Volume')
render_screen('Mute')
render_screen('AudioSelection')

render_screen('AtileHD_Config')
render_screen('AtileHDScreens')
render_screen('AtileHD_About')

render_screen('Menu')
render_screen('About')
render_screen('AnimationSetupScreen')
render_screen('AutoShutDownConfiguration')
render_screen('BouquetSelector')
render_screen('Blindscan')
render_screen('ChannelContextMenu')
render_screen('ChannelSelection')
render_screen('ChoiceBox')
render_screen('Console')
render_screen('CutListEditor')
render_screen('Dish')
render_screen('DirectoryBrowser')
render_screen('DeviceManager2')
render_screen('DeviceManager2Message')
# EPG
render_screen('EPGSelection')
render_screen('EPGSelectionMulti')
render_screen('EPGSelectionEPGBar_HD')
render_screen('EventView')

# AutoTimer
render_screen('AutoTimerWizard')
render_screen('AutoTimerSettings')
render_screen('AutoTimerOverview')
render_screen('AutoTimerEditor')
render_screen('AutoTimerFilterEditor')
render_screen('AutoTimerServiceEditor')
render_screen('AutoTimerImporter')
render_screen('AutoTimerPreview')

# EPGRefresh
render_screen('EPGRefreshConfiguration')
render_screen('EPGRefreshServiceEditor')

# GraphMultiEPG
render_screen('GraphMultiEPG')
render_screen('GraphMultiEPG1')
render_screen('GraphMultiEPG2')
render_screen('GraphMultiEPG3')

# CI
render_screen('CiSelection')
render_screen('MMIDialog')

render_screen('HelpMenu')
render_screen('HarddiskSelection')
render_screen('InfoBarZapHistory')
render_screen('HdmiCecPlugin')
render_screen('LanguageSelection')
render_screen('LocationBox')
render_screen('MessageBox')
render_screen('MyPluginManager')
render_screen('myPacketManager')
render_screen('MediaPlayer')

# MultiQuickButton
render_screen('QuickButton')
render_screen('MultiQuickButton')
render_screen('MultiQuickButtonMacro')

# MoviePlayer
render_screen('MovieSelection')
render_screen('MovieContextMenu')

# EnhancedMovieCenterMenu
render_screen('EnhancedMovieCenterMenu')
render_screen('EMCSelection')
render_screen('MovieMenu')
render_screen('EMCMenu')

render_screen('NimSetup')
render_screen('NimSelection')
render_screen('NumberZapExt')
render_screen('NumberZap')
render_screen('NumberZapWithName')
render_screen('NumericalTextInputHelpDialog')
render_screen('PluginBrowser')
render_screen('picshow')
render_screen('Pic_Exif')
render_screen('RdsInfoDisplay')
render_screen('RassInteractive')
render_screen('PacketManager')
render_screen('RecordPathsSettings')
render_screen('ServiceInfo')
render_screen('Setup')
render_screen('ScanSetup')
render_screen('ServiceScan')
render_screen('ScanSimple')

render_screen('SIBsetupScreen')
render_screen('SimpleChannelSelection')
render_screen('SkinSelector')
@main.screen name: "Standby", title: "Standby", position: "0,0", size: "0,0", backgroundColor: :transparent, flags: :wfNoBorder
render_screen('Subtitles')
@main.screen name: "SubtitleDisplay", position: "0,0", size: "#{TraxanosHD.width},#{TraxanosHD.height}", backgroundColor: :transparent, flags: :wfNoBorder, zPosition: -1
render_screen('TimeDateInput')
render_screen('TimerEditList')
render_screen('TimerEntry')
render_screen('TimerSelection')
render_screen('TimerSanityConflict')
render_screen('VirtualKeyBoard')
render_screen('Ipkg')
render_screen('UpdatePlugin')
render_screen('VideoEnhancementPreview')
render_screen('VideoEnhancementSetup')
# VTi
render_screen('VtiNews')
render_screen('AllNews')
render_screen('VTIMainMenu')
render_screen('VTISubMenu')
render_screen('VTIStatusListMenu')
render_screen('VTiUpdateInfo')
render_screen('ReduceMenuConfig')
render_screen('CamSelectMenu')
render_screen('BackupSuite')
render_screen('InfoPanel')

@main.screen name: "VideoFinetune", position: "0,0", size: "#{TraxanosHD.width},#{TraxanosHD.height}", backgroundColor: :black, zPosition: 70 do |xml|
  xml.widget source: "Canvas", render: "Canvas", position: "280,70", size: "720,576"
end

build_skin_to_file(@main, 'skin.xml')
build_skin_to_file(@logoleft, 'allScreens/skin_LogoLeft.xml')
