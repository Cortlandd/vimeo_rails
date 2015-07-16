module Vimeo
  module Groups
    class Users < Vimeo::Base

      # Get a list of users that joined a Group.

      def self.info(group_id, access_token)
        get("/groups/#{group_id}/users/?access_token=#{access_token}")
      end

    end
  end
end