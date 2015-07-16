module Vimeo
  module Channels
    class Videos < Vimeo::Base

      # Get a list of videos in a Channel.

      def self.info(channel_id, access_token)
        get("/channels/#{channel_id}/videos/?access_token=#{access_token}")
      end

    end
  end
end