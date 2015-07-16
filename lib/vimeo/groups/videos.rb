module Vimeo
  module Groups
    class Videos < Vimeo::Base

      # Get a list of videos in a Group.

      def self.info(group_id, access_token)
        get("/groups/#{group_id}/videos/?access_token=#{access_token}")
      end

      # Check if a Group has a video.

      def self.has_video?(group_id, video_id, access_token)
        get("/groups/#{group_id}/videos/#{video_id}/?access_token=#{access_token}")
      end

    end
  end
end