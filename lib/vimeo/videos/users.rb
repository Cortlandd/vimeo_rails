module Vimeo
  module Videos
    class Users < Vimeo::Base

      # Get all users that are allowed to see this video

      def self.allowed_users?(video_id, access_token)
        get("/videos/#{video_id}/privacy/users/?access_token=#{access_token}")
      end
    end
  end
end