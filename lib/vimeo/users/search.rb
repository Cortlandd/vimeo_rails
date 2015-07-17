module Vimeo
  module Users
    class Search < Vimeo::Base

      # Search for users

      def self.find(access_token)
        get("/users?access_token=#{access_token}")
      end

    end
  end
end