module Vimeo
  module Videos
    class TextTracks < Vimeo::Base

      # Get all the text tracks for a video.

      def self.find_all(video_id, access_token)
        get("/videos/#{video_id}/texttracks/?access_token=#{access_token}")
      end
    end
  end
end