TraxanosHD::Screen.new(xml, :SecondInfoBar, "SecondInfoBar") do
  position 0, 0, -6

  header

  box do
    position TraxanosHD.border, 135
    size TraxanosHD.inner_width, 438

    label do
      position 0, 0
      size TraxanosHD.left_width, 375

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

        widget do
          position 0, 0
          size nil, 42
          font "SegoeUI", 30
          render "Label"
          source "session.Event_Now"
          nowrap 1
          orientation :left, :center
          transparent 1
          convert "Name", type: "EventName"
        end

        widget do
          position 0, 60
          size nil, -60
          font "Regular", TraxanosHD.default_left_font_size
          render "VRunningText"
          source "session.Event_Now"
          config "movetype=running,startpoint=0,direction=top,steptime=120,repeat=2,always=0,startdelay=5000,wrap"
          orientation :left, :top
          transparent 1
          convert "ExtendedDescription", type: "EventName"
        end

      end
    end

    label do
      position TraxanosHD.left_width, 6
      size TraxanosHD.right_width, 375 - 12
      accent

      box do
        position TraxanosHD.spacer, TraxanosHD.spacer
        size -(TraxanosHD.spacer*2), -(TraxanosHD.spacer*2)

        widget do
          size 276, 36
          font "Regular", 24
          render "Label"
          source "session.CurrentService"
          nowrap 1
          orientation :left, :center
          transparent 1
          convert "Name", type: "ServiceName"
          accent
        end

        widget do
          position -80
          size 80, 36
          font "Regular", 24
          render "Label"
          source "session.CurrentService"
          nowrap 1
          orientation :right, :center
          transparent 1
          convert "Number", type: "ExtremeInfo"
          accent
        end

        y = 36 + TraxanosHD.spacer

        label do
          position 0, y
          size 120, 24
          font "Regular", 18
          text "Provider:"
          nowrap 1
          orientation :left, :top
          transparent 1
          accent
        end

        widget do
          position -236, y
          size 236, 24
          font "Regular", 18
          render "Label"
          source "session.CurrentService"
          nowrap 1
          orientation :left, :top
          transparent 1
          convert "Provider", type: "ServiceName"
          accent
        end

        y += 24

        label do
          position 0, y
          size 120, 24
          font "Regular", 18
          text "Resolution:"
          nowrap 1
          orientation :left, :top
          transparent 1
          accent
        end

        widget do
          position -236, y
          size 99, 24
          font "Regular", 18
          render "Label"
          source "session.CurrentService"
          nowrap 1
          orientation :left, :top
          transparent 1
          convert "VideoWidth", type: "ServiceInfo"
          accent
        end

        label do
          position -236, y
          size 99, 24
          font "Regular", 18
          text "x"
          nowrap 1
          orientation :center, :top
          transparent 1
          accent
        end

        widget do
          position -236, y
          size 99, 24
          font "Regular", 18
          render "Label"
          source "session.CurrentService"
          nowrap 1
          orientation :right, :top
          transparent 1
          convert "VideoHeight", type: "ServiceInfo"
          accent
        end

        widget do
          position -236+99, y
          size 66, 24
          font "Regular", 18
          render "Label"
          source "session.CurrentService"
          nowrap 1
          orientation :right, :top
          transparent 1
          convert "Framerate", type: "ServiceInfo"
          accent
        end

        y += 24

        y += 24

        label do
          position 0, y
          size 120, 24
          font "Regular", 18
          text "Tuner:"
          nowrap 1
          orientation :left, :top
          transparent 1
          accent
        end

        tuner_list = []
        tuner_list << { name: "A", range: "0,0", bit: 1 }
        tuner_list << { name: "B", range: "1,1", bit: 2 }
        tuner_list << { name: "C", range: "2,2", bit: 4 }
        tuner_list << { name: "D", range: "3,3", bit: 8 }
        tuner_list << { name: "E", range: "4,4", bit: 16 }
        tuner_list << { name: "F", range: "5,5", bit: 32 }

        x = 120
        tuner_list.each do |tuner|
          widget do
            position x, y
            size 15, 24
            font "Regular", 18
            render "FixedLabel"
            source "session.TunerInfo"
            nowrap 1
            orientation :center, :top
            transparent 1
            text tuner[:name]
            convert "TunerUseMask", type: "TunerInfo"
            convert tuner[:bit], type: "ValueBitTest"
            convert type: "ConditionalShowHide"
            accent
          end

          widget do
            position x, y+23
            size 15, 3
            render "FixedLabel"
            source "session.FrontendInfo"
            background :foregroundAccent
            convert "NUMBER", type: "FrontendInfo"
            convert tuner[:range], type: "ValueRange"
            convert type: "ConditionalShowHide"
          end
          x += 15
        end

        y += 36

        widget do
          position 0, y
          size nil, 24
          font "Regular", 14
          render "Label"
          source "session.CurrentService"
          nowrap 1
          orientation :left, :top
          transparent 1
          convert "EcmInfo", type: "VtiInfo"
          accent
        end

        x = 0
        y = 200
        pixmap do
          position x, y
          size 60, 60
          image "AtileHD/icons/ico_format_off.png"
          alphatest "blend"
          background nil
          foreground nil
        end
        widget do
          position x, y
          size 60, 60
          source "session.CurrentService"
          render "Pixmap"
          image "AtileHD/icons/ico_format_on.png"
          alphatest "blend"
          convert "IsWidescreen", type: "ServiceInfo"
          convert type: "ConditionalShowHide"
          background nil
          foreground nil
        end

        x += 66
        pixmap do
          position x, y
          size 60, 60
          image "AtileHD/icons/ico_hd_off.png"
          alphatest "blend"
          background nil
          foreground nil
        end
        widget do
          position x, y
          size 60, 60
          source "session.CurrentService"
          render "Pixmap"
          image "AtileHD/icons/ico_hd_on.png"
          alphatest "blend"
          convert "VideoWidth", type: "ServiceInfo"
          convert "721,1980", type: "ValueRange"
          convert type: "ConditionalShowHide"
          background nil
          foreground nil
        end

        x += 66
        pixmap do
          position x, y
          size 60, 60
          image "AtileHD/icons/ico_dolby_off.png"
          alphatest "blend"
          background nil
          foreground nil
        end
        widget do
          position x, y
          size 60, 60
          source "session.CurrentService"
          render "Pixmap"
          image "AtileHD/icons/ico_dolby_on.png"
          alphatest "blend"
          convert "IsMultichannel", type: "ServiceInfo"
          convert type: "ConditionalShowHide"
          background nil
          foreground nil
        end

        # x += 66
        # pixmap do
        #   position x, y
        #   size 60, 60
        #   image "AtileHD/icons/ico_dolby_off.png"
        #   alphatest "blend"
        #   background nil
        #   foreground nil
        # end
        # widget do
        #   position x, y
        #   size 60, 60
        #   source "session.CurrentService"
        #   render "Pixmap"
        #   image "AtileHD/icons/ico_dolby_on.png"
        #   alphatest "blend"
        #   convert "IsMultichannel", type: "ServiceInfo"
        #   convert type: "ConditionalShowHide"
        #   background nil
        #   foreground nil
        # end

        x = 0
        y = 259

        pixmap do
          position x, y
          size 60, 60
          image "AtileHD/icons/ico_txt_off.png"
          alphatest "blend"
          background nil
          foreground nil
        end
        widget do
          position x, y
          size 60, 60
          source "session.CurrentService"
          render "Pixmap"
          image "AtileHD/icons/ico_txt_on.png"
          alphatest "blend"
          convert "HasTelext", type: "ServiceInfo"
          convert type: "ConditionalShowHide"
          background nil
          foreground nil
        end

        x += 66
        pixmap do
          position x, y
          size 60, 60
          image "AtileHD/icons/ico_subtitel_off.png"
          alphatest "blend"
          background nil
          foreground nil
        end
        widget do
          position x, y
          size 60, 60
          source "session.CurrentService"
          render "Pixmap"
          image "AtileHD/icons/ico_subtitel_on.png"
          alphatest "blend"
          convert "SubtitlesAvailable", type: "VServiceInfo"
          convert type: "ConditionalShowHide"
          background nil
          foreground nil
        end

        x += 66
        pixmap do
          position x, y
          size 60, 60
          image "AtileHD/icons/ico_sub_off.png"
          alphatest "blend"
          background nil
          foreground nil
        end
        widget do
          position x, y
          size 60, 60
          source "session.CurrentService"
          render "Pixmap"
          image "AtileHD/icons/ico_sub_on.png"
          alphatest "blend"
          convert "SubservicesAvailable", type: "ServiceInfo"
          convert type: "ConditionalShowHide"
          background nil
          foreground nil
        end

        x += 66
        pixmap do
          position x, y
          size 60, 60
          image "AtileHD/icons/ico_crypt_off.png"
          alphatest "blend"
          background nil
          foreground nil
        end
        widget do
          position x, y
          size 60, 60
          source "session.CurrentService"
          render "Pixmap"
          image "AtileHD/icons/ico_crypt_on.png"
          alphatest "blend"
          convert "IsCrypted", type: "ServiceInfo"
          convert type: "ConditionalShowHide"
          background nil
          foreground nil
        end

      end
    end

    label do
      position 0, 402
      size TraxanosHD.inner_width, 36
      accent2

      label do
        position 18
        size 54
        text "SNR"
        font "Regular", 18
        orientation :left, :center
        transparent 1
        accent2
      end

      label do
        position 405
        size 54
        text "AGC"
        font "Regular", 18
        orientation :left, :center
        transparent 1
        accent2
      end

      progressbar do
        position 69, 16
        size 270,5
        transparent 1
        accent2
        render "Progress"
        source "session.FrontendStatus"
        convert "SNR", type: "FrontendInfo"
      end

      progressbar do
        position 456, 16
        size 270,5
        transparent 1
        accent2
        render "Progress"
        source "session.FrontendStatus"
        convert "AGC", type: "FrontendInfo"
      end

      widget do
        position 351
        size 54, 36
        font "Regular", 18
        orientation :left, :center
        transparent 1
        accent2
        render "Label"
        source "session.FrontendStatus"
        convert "SNR", type: "FrontendInfo"
      end

      widget do
        position 738
        size 54
        font "Regular", 18
        orientation :left, :center
        transparent 1
        accent2
        render "Label"
        source "session.FrontendStatus"
        convert "AGC", type: "FrontendInfo"
      end

      widget do
        position 832
        size 150
        font "Regular", 18
        render "Label"
        source "session.CurrentService"
        convert "TempInfo", type: "VtiInfo"
        orientation :center, :center
        transparent 1
        accent2
      end

      widget do
        position 1022
        size 162
        font "Regular", 18
        render "Label"
        source "session.CurrentService"
        convert "FanInfo", type: "VtiInfo"
        orientation :center, :center
        transparent 1
        accent2
      end

    end

  end

  infobar
end
