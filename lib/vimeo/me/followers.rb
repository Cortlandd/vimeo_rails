module Vimeo
  module Me
    class Followers < Vimeo::Base

      # Get a list of the user's followers

      def self.info
        get("/me/followers?access_token=#{access_token}")
      end
    end
  end
end