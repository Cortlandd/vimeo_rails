module Vimeo
  module Me
    class Channels < Vimeo::Base

      # Get a list of the Channels a user follows

      def self.info
        get("/me/channels?access_token=#{access_token}")
      end

    end
  end
end