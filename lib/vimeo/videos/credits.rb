module Vimeo
  module Videos
    class Credits < Vimeo::Base

      # Get a single credit

      def self.find_credit(video_id, credit_id, access_token)
        get("/videos/#{video_id}/credits/#{credit_id}/?access_token=#{access_token}")
      end

      # Get a list of users credited on a video

      def self.find_all(video_id, access_token)
        get("/videos/#{video_id}/credits/?access_token=#{access_token}")
      end
    end
  end
end