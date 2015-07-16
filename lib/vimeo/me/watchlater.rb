module Vimeo
  module Me
    class WatchLater < Vimeo::Base

      # Get the users Watch Queue

      def self.watchlater_queue_info(user_id, access_token)
        get("/users/#{user_id}/watchlater/?access_token=#{access_token}")
      end

      # Check if a video is in a users watch queue

      def self.inside_queue?(user_id, video_id, access_token)
        get("/users/#{user_id}/watchlater/#{video_id}/?access_token=#{access_token}")
      end

    end
  end
end