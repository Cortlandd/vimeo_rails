module Vimeo
  module Me
    class Albums < Vimeo::Base

      # Get a list of a user's Albums.

      def self.info
        get("/me/albums/?access_token=#{access_token}")
      end

    end
  end
end