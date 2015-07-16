module Vimeo
  module Users
    class Albums < Vimeo::Base

      # Get a list of a user's Albums

      def self.find_all(user_id, access_token)
        get("/users/#{user_id}/albums/?access_token=#{access_token}")
      end

      # Get info of an Album

      def self.get_info(user_id, album_id, access_token)
        get("/users/#{user_id}/albums/#{album_id}/?access_token=#{access_token}")
      end

      # Get the list of videos in an Album.

      def self.album_videos(user_id, album_id, access_token)
        get("/users/#{user_id}/albums/#{album_id}/videos/?access_token=#{access_token}")
      end

      # Check if an Album contains a video

      def self.has_video?(user_id, album_id, video_id, access_token)
        get("/users/#{user_id}/albums/#{album_id}/videos/#{video_id}/?access_token=#{access_token}")
      end
    end
  end
end