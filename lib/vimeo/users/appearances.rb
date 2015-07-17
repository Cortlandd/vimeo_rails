module Vimeo
  module Users
    class Appearances < Vimeo::Base

      # Get all videos that a user appears in

      def self.appearances(user_id, access_token)
        get("/users/#{user_id}/appearances?access_token=#{access_token}")
      end

    end
  end
end
