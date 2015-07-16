module Vimeo
  module Videos
    class EmbedDomains < Vimeo::Base

      # Retrieve the domains that are allowed to embed this video.

      def self.info(video_id, access_token)
        get("/videos/#{video_id}/privacy/domains/?access_token=#{access_token}")
      end
    end
  end
end