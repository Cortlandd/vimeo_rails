module Vimeo
  module Users
    class Channels < Vimeo::Base

      # Get a list of the Channels a user follows

      def self.follows(user_id, access_token)
        get("/users/#{user_id}/channels/?access_token=#{access_token}")
      end

      # Check if a user follows a Channel.

      def self.is_following?(user_id, channel_id, access_token)
        get("/users/#{user_id}/channels/#{channel_id}/?access_token=#{access_token}")
      end

    end
  end
end