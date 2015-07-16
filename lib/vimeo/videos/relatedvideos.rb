module Vimeo
  module Videos
    class RelatedVideos < Vimeo::Base

      # Get related videos

      def self.find(video_id, access_token)
        get("/videos/#{video_id}/videos/?access_token=#{access_token}")
      end
    end
  end
end