module Vimeo
  class Groups < Vimeo::Base

    # Get a list of all Groups. GET #

    def self.all
      get('/groups')
    end

    # Get a group. GET #
    #
    # group_id = group name

    def self.find_group(group_id)
      get("/groups/#{group_id}")
    end

    ##################### Users ####################

    # Get a list of users that joined a Group. GET #
    #
    # group_id = group name

    def self.find_group_users(group_id)
      get("/groups/#{group_id}/users")
    end

    ##################### Videos ####################

    # Get a list of videos in a Group. GET #
    #
    # group_id = group name

    def self.group_videos(group_id)
      get("/groups/#{group_id}/videos")
    end

    # Check if a Group has a video. GET #
    #
    # group_id = group name

    def self.has_video?(group_id, video_id)
      get("/groups/#{group_id}/videos/#{video_id}")
    end
  end
end