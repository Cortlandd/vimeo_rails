module Vimeo
  module Users
    class Following < Vimeo::Base

      # Get a list of the user's that a user is following.

      def self.following(user_id, access_token)
        get("/users/#{user_id}/following/?access_token=#{access_token}")
      end
    end
  end
end