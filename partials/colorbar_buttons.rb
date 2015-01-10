class TraxanosHD::Element
  def colorbar_buttons1(red = false, green = false, yellow = false, blue = false)
    red_name = red if red.class == String or red.class == Symbol
    green_name = green if green.class == String or green.class == Symbol
    yellow_name = yellow if yellow.class == String or yellow.class == Symbol
    blue_name = blue if blue.class == String or blue.class == Symbol

    red_name = "key_red" if red_name.nil?
    green_name = "key_green" if green_name.nil?
    yellow_name = "key_yellow" if yellow_name.nil?
    blue_name = "key_blue" if blue_name.nil?

    if red
      widget do
        position 18-9
        size 198, 30
        name "#{red_name}"
        font "Regular", 16
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end

    if green
      widget do
        position 216-9
        size 198, 30
        name "#{green_name}"
        font "Regular", 16
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end

    if yellow
      widget do
        position 414-9
        size 198, 30
        name "#{yellow_name}"
        font "Regular", 16
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end

    if blue
      widget do
        position 612-9
        size 198, 30
        name "#{blue_name}"
        font "Regular", 16
        orientation :center, :center
        nowrap 1
        transparent 1
      end
    end
  end
end
