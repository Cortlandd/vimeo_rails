module Vimeo
  module Me
    class Following < Vimeo::Base

      # Get a list of the user's that a user is following.

      def self.info
        get("/me/following?access_token=#{access_token}")
      end
    end
  end
end