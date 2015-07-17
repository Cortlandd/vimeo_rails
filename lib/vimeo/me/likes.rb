module Vimeo
  module Me
    class Likes < Vimeo::Base

      # Get a list of the videos that a user likes.

      def self.info
        get("/me/likes?access_token=#{access_token}")
      end

      # Check if a user likes a video.

      def likes_video?(video_id, access_token)
        get("/me/likes/#{video_id}?access_token=#{access_token}")
      end
    end
  end
end