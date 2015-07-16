module Vimeo
  module Users
    class Videos < Vimeo::Base

      # Get a list of videos uploaded by a user.

      def self.find(user_id, access_token)
        get("/users/#{user_id}/videos/?access_token=#{access_token}")
      end

      # Check if a user owns a clip.

      def self.owns_clip?(user_id, video_id, access_token)
        get("/users/#{user_id}/videos/#{video_id}/?access_token=#{access_token}")
      end

    end
  end
end