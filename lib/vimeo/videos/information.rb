module Vimeo
  module Videos
    class Information < Vimeo::Base

      # Get a video

      def self.info(video_id, access_token)
        get("/videos/#{video_id}?access_token=#{access_token}")
      end

    end
  end
end