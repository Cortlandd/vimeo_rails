# require 'categories/channels'
require 'version'

module Vimeo
  class Base
    include HTTParty
    base_uri 'https://api.vimeo.com' # 'should have: /?access_token=ACCESS_TOKEN at the end of all links'
  end
end
