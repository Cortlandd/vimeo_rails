module Vimeo
  module Me
    class Videos < Vimeo::Base

      # Get a list of videos uploaded by a user.

      def self.info
        get("/me/videos?access_token=#{access_token}")
      end

      # Check if a user owns a clip.

      def owns_clip?(video_id, access_token)
        get("/me/videos/#{video_id}?access_token=#{access_token}")
      end

    end
  end
end