module Vimeo
  module Videos
    class VideoCategories < Vimeo::Base

      # Get a list of all categories this video is in.

      def self.find_all(video_id, access_token)
        get("/videos/#{video_id}/categories/?access_token=#{access_token}")
      end
    end
  end
end