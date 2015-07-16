module Vimeo
  module Users
    class Feed < Vimeo::Base

      # Get a list of the videos in your feed

      def self.feed(user_id, access_token)
        get("/users/#{user_id}/feed/?access_token=#{access_token}")
      end

    end
  end
end