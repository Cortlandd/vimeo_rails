# require 'categories/channels'
require 'version'

module Vimeo
  class Base
    include HTTParty
    base_uri 'https://api.vimeo.com' # 'should have: /?access_token=ACCESS_TOKEN at the end of all links'
  end
end

# request = https://api.vimeo.com/groups/1615/videos?access_token=23bbdffeb02bdf37287d5c8f866b8aa9
