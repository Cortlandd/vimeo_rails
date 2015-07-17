module Vimeo
  module Me
    class Pictures < Vimeo::Base

      # Get a list of this user's portrait images.

      def self.info
        get("/me/pictures?access_token=#{access_token}")
      end

      # Check if a user has a portrait.

      def self.has_portrait?(portraitset_id, access_token)
        get("/me/pictures/#{portraitset_id}?access_token=#{access_token}")
      end
    end
  end
end