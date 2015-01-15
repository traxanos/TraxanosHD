#!env ruby

$:.unshift File.expand_path(File.join(File.dirname(__FILE__)))
$:.unshift File.expand_path(File.join(File.dirname(__FILE__), 'lib'))

require 'builder'
require 'rmagick'
require 'active_support/all'
require 'traxanos_hd'
require 'config'

# load partial
Dir.glob("./partials/*.rb").each do |file|
  require file
end

require 'generate_images'
require 'generate_xml'




