module Vimeo
  module Videos
    class Likes < Vimeo::Base

      # Get a list of the users who liked this video

      def self.video(video_id, access_token)
        get("/videos/#{video_id}/likes?access_token=#{access_token}")
      end
    end
  end
end

# Vimeo::Videos::Likes.users()