module Vimeo
  module Videos
    class Pictures < Vimeo::Base

      # Get a list of this videos past and present pictures

      def self.pictures(video_id, access_token)
        get("/videos/#{video_id}/pictures/?access_token=#{access_token}")
      end

      # Get a single picture resource for a video

      def self.picture(video_id, picture_id, access_token)
        get("/videos/#{video_id}/pictures/#{picture_id}/?access_token=#{access_token}")
      end
    end
  end
end