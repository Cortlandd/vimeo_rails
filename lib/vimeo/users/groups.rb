module Vimeo
  module Users
    class Groups < Vimeo::Base

      # Get a list of the Groups a user has joined.

      def self.groups(user_id, access_token)
        get("/users/#{user_id}/groups?access_token=#{access_token}")
      end

      # Check if a user has joined a Group?

      def self.has_joined?(user_id, group_id, access_token)
        get("/users/#{user_id}/groups/#{group_id}?access_token=#{access_token}")
      end

    end
  end
end