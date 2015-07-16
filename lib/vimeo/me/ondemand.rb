module Vimeo
  module Me
    class OnDemand < Vimeo::Base

      # Get a list of the user's followers.

      def self.user_followers(access_token)
        get("/me/ondemand/pages/?access_token=#{access_token}")
      end

      # Get a users OnDemand purchases and rentals.

      def self.user_purchases(access_token)
        get("/me/ondemand/library/?access_token=#{access_token}")
      end

      # Check if an OnDemand page is in your library.

      def self.in_library?(ondemand_id, access_token)
        get("/me/ondemand/library/#{ondemand_id}/?access_token=#{access_token}")
      end
    end
  end
end
