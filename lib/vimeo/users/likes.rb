module Vimeo
  module Users
    class Likes < Vimeo::Base

      # Get a list of the videos that a user likes.

      def self.find(user_id, access_token)
        get("/users/#{user_id}/likes?access_token=#{access_token}")
      end

      # Check if a user likes a video.

      def likes_this?(user_id, video_id, access_token)
        get("/users/#{user_id}/likes/#{video_id}?access_token=#{access_token}")
      end
    end
  end
end