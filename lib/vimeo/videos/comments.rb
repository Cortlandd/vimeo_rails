module Vimeo
  module Videos
    class Comments < Vimeo::Base

      # Get comments on this video.

      def self.comments(video_id, access_token)
        get("/videos/#{video_id}/comments?access_token=#{access_token}")
      end

      # Check if a video has a specific comment.

      def self.has_comment?(video_id, comment_id, access_token)
        get("/videos/#{video_id}/comments/#{comment_id}?access_token=#{access_token}")
      end

      # Get comments on this video.

      def self.get_comments(video_id, comment_id, access_token)
        get("/videos/#{video_id}/comments/#{comment_id}/replies?access_token=#{access_token}")
      end
    end
  end
end