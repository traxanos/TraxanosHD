class TraxanosHD::Element
  def graphepg(itemHeight = 30)
    count = (height - 24) / itemHeight # round down
    listHeight = count * itemHeight

    widget do
      size nil, 21
      name "timeline_text"
      selectiondisabled 1
      transparent 1
      foreground nil
    end

    widget do
      position 0, 24
      size nil, listHeight
      name "list"
      itemheight itemHeight
      transparent 1
      orientation :left, :center
      custom "piconWidth", 60
      custom "EntryRecColor", "red"
      custom "EntryBorderColor", "background"

      custom "ServiceNameBackgroundColor", "background"
      custom "ServiceNameForegroundColor", "foreground"

      custom "EntryForegroundColor", "graphepgFGNormal"
      custom "EntryBackgroundColor", "graphepgBGNormal"

      custom "EntryNowForegroundColor", "graphepgFGNow"
      custom "EntryNowBackgroundColor", "graphepgBGNow"

      custom "EntryForegroundColorSelected", "foregroundAccent"
      custom "EntryBackgroundColorSelected", "backgroundAccent"

      custom "EntryNowForegroundColorSelected", "foregroundAccent"
      custom "EntryNowBackgroundColorSelected", "backgroundAccent"

      custom "FontSize1", "14"
      custom "FontSize2", "20"

      scrollbars
    end

    widget do
      position 0, 19, 2
      size 3,6
      name "timeline0"
      alphatest "on"
      image "/usr/lib/enigma2/python/Plugins/Extensions/GraphMultiEPG/pic/timeline.png"
      foreground nil
    end

    widget do
      position 0, 19, 2
      size 3,6
      name "timeline1"
      alphatest "on"
      image "/usr/lib/enigma2/python/Plugins/Extensions/GraphMultiEPG/pic/timeline.png"
      foreground nil
    end

    widget do
      position 0, 19, 2
      size 3,6
      name "timeline2"
      alphatest "on"
      image "/usr/lib/enigma2/python/Plugins/Extensions/GraphMultiEPG/pic/timeline.png"
      foreground nil
    end

    widget do
      position 0, 19, 2
      size 3,6
      name "timeline3"
      alphatest "on"
      image "/usr/lib/enigma2/python/Plugins/Extensions/GraphMultiEPG/pic/timeline.png"
      foreground nil
    end

    widget do
      position 0, 19, 2
      size 3,6
      name "timeline4"
      alphatest "on"
      image "/usr/lib/enigma2/python/Plugins/Extensions/GraphMultiEPG/pic/timeline.png"
      foreground nil
    end

    widget do
      position 0, 19, 2
      size 3,6
      name "timeline5"
      alphatest "on"
      image "/usr/lib/enigma2/python/Plugins/Extensions/GraphMultiEPG/pic/timeline.png"
      foreground nil
    end

    widget do
      position 0, 19, 3
      size 15, listHeight + 5
      name "timeline_now"
      alphatest "on"
      image "/usr/lib/enigma2/python/Plugins/Extensions/GraphMultiEPG/pic/timeline-now.png"
      foreground nil
    end

  end
end

