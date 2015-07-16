module Vimeo
  module Users
    class Information < Vimeo::Base

      # Get a Users information

      def self.find(user_id, access_token)
        get("/users/#{user_id}/?access_token=#{access_token}")
      end

    end
  end
end