module Vimeo
  module Channels
    class Users < Vimeo::Base

      # Get a list of users who follow a Channel.

      def self.info(channel_id, access_token)
        get("/channels/#{channel_id}/users?access_token=#{access_token}")
      end

    end
  end
end
