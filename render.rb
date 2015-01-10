#!env ruby

require 'nokogiri'
require 'rmagick'

background = "background.jpg"
screen = ARGV[0]
@colors = {}
@fonts = {}
filename = "preview_#{screen}.png"

def parse_colors(entries)
  entries.each do |entry|
    entry["value"] = '#' + entry["value"].slice(3..-1) if entry["value"].length == 9
    @colors[entry["name"]] = entry["value"]
  end
end
def parse_fonts(entries)
  entries.each do |entry|
    @fonts[entry["name"]] = File.expand_path(File.dirname(__FILE__) + '/..') + '/' + entry["filename"]
  end
end

def parse_position(value)
  result = { x: 0, y: 0 }
  result[:x] = value.split(",").first.to_i
  result[:y] = value.split(",").last.to_i
  result
end

def parse_size(value)
  result = { w: 0, h: 0 }
  result[:w] = value.split(",").first.to_i
  result[:h] = value.split(",").last.to_i
  result
end

def parse_attributes(xml)
  attributes = {}
  xml.attributes.each do |x|
    name = x.first.to_sym
    value = x.last.to_s
    if name == :backgroundColor or name == :foregroundColor
      attributes[name] = @colors[value]
    elsif name == :position
      #p value
      attributes[name] = parse_position(value)
    elsif name == :size
      attributes[name] = parse_size(value)
    elsif value == value.to_i.to_s
      attributes[name] = value.to_i
    else
      attributes[name] = value
    end
  end
  attributes
end

xml = Nokogiri::XML(File.open("skin.xml"))

parse_colors(xml.xpath("//skin/colors/color"))
parse_fonts(xml.xpath("//skin/fonts/font"))
puts bpp = xml.xpath("//skin/output/resolution").first['bpp'].to_i
puts xres = xml.xpath("//skin/output/resolution").first['xres'].to_i
puts yres = xml.xpath("//skin/output/resolution").first['yres'].to_i
puts "//skin/screens/screen[name=\"#{screen}\"]"
screen_xml = xml.xpath("//skin/screens/screen[@name=\"#{screen}\"]").first

raise StandardError, "Screen '#{screen}' not found" if screen_xml.nil?

#img = Magick::Image.new(xres, yres)
img = Magick::Image.read(background).first
img.alpha = Magick::ActivateAlphaChannel
#img.composite(bgimg, Magick::CenterGravity, Magick::CopyCompositeOp)

#img.background_color = "#{background}"
screen_attributes = parse_attributes(screen_xml)
default_x = screen_attributes[:position][:x]
default_y = screen_attributes[:position][:y]

elements = screen_xml.xpath('./*').to_a
elements.reverse!
elements.sort! do |a, b|
  if a['zPosition'].nil? and  b['zPosition'].nil?
    0
  elsif a['zPosition'].nil?
    1
  elsif b['zPosition'].nil?
    -1
  else
    a['zPosition'].to_i <=> b['zPosition'].to_i
  end
end

elements.each do |element_xml|
  element_attributes = parse_attributes element_xml
  pos_x = default_x + element_attributes[:position][:x]
  pos_y = default_y + element_attributes[:position][:y]
  width = element_attributes[:size][:w]
  height = element_attributes[:size][:h]


    p element_xml.name.downcase.to_sym
    p element_attributes

  case element_xml.name.downcase.to_sym
  when :elabel
    rect = Magick::Draw.new
    rect.fill(element_attributes[:backgroundColor])
    rect.rectangle(pos_x, pos_y, pos_x + width, pos_y + height)
    rect.draw(img)
  when :widget
    rect = Magick::Draw.new
    rect.fill(element_attributes[:backgroundColor])
    rect.rectangle(pos_x, pos_y, pos_x + width, pos_y + height)
    rect.draw(img)
    p font = @fonts[element_attributes[:font].split(';').first.strip]
    p font_size = element_attributes[:font].split(';').last.strip.to_i
    rect.annotate(img, pos_x, pos_y, pos_x + width, pos_y + height, "foo bar bla") do
      rect.fill("#FFFFFF")
      rect.pointsize = font_size
      rect.font = font
    end
  end
  
end

img.write(filename)
%x(open #{filename})

