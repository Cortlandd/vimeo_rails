module Vimeo
  module Me
    class Feed < Vimeo::Base

      # Get a list of the videos in your feed

      def self.info
        get("/me/feed/?access_token=#{access_token}")
      end

    end
  end
end