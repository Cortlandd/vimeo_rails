module Vimeo
  module Videos
    class Search < Vimeo::Base

      # Search for videos

      def self.find(access_token)
        get("/videos/?access_token=#{access_token}")
      end
    end
  end
end