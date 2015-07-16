module Vimeo
  module Me
    class Groups < Vimeo::Base

      # Get all videos that a user appears in.

      def self.info
        get("/me/albums/?access_token=#{access_token}")
      end

      # Check if a user has joined a Group?

      def self.has_joined?(group_id, access_token)
        get ("/me/groups/#{group_id}/?access_token=#{access_token}")
      end

    end
  end
end