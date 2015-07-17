module Vimeo
  module Videos
    class Tags < Vimeo::Base

      # List all of the tags on the video

      def self.find_all(video_id, access_token)
        get("/videos/#{video_id}/tags?access_token=#{access_token}")
      end

      # Check if a tag has been applied to a video

      def self.has_tag?(video_id, word, access_token)
        get("/videos/#{video_id}/tags/#{word}?access_token=#{access_token}")
      end
    end
  end
end