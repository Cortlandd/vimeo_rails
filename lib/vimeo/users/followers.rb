module Vimeo
  module Users
    class Followers < Vimeo::Base

      # Get a list of the user's followers.

      def self.followers(access_token)
        get("/users/#{users_id}/followers?access_token=#{access_token}")
      end

    end
  end
end