module Vimeo
  class User < Vimeo::Base

    ##################### Search ####################

    # Search for users. GET #
        #
    # user_id = the user's ID or username


    # def self.user_search
    #   get("/users")
    # end

    ##################### Information ####################

    # Get a user. GET #
    #   #
    # user_id = the user's ID or username

    # Vimeo::Groups.user_info("clown")

    def self.user_info(user_id)
      get("/users/#{user_id}")
    end

    ##################### Albums ####################

    # Get a list of a user's Albums. GET #
        #
    # user_id = the user's ID or username


    def self.user_album(user_id)
      get("/users/#{user_id}/albums")
    end

    # Get info on an Album. GET #
    #
    # user_id = the user's ID or username

    def self.album_info(user_id, album_id)
      get("/users/#{user_id}/albums/#{album_id}")
    end

    # Get a list of videos in an Album. GET #
    #
    # user_id = the user's ID or username

    def self.album_videos(user_id, album_id)
      get("/users/#{user_id}/albums/#{album_id}/videos")
    end

    # Check if an Album contains a video. GET #
    #
    # user_id = the user's ID or username

    def self.album_has_video(user_id, album_id, video_id)
      get("/users/#{user_id}/albums/#{album_id}/videos/#{video_id}")
    end

    ##################### Appearances ####################

    # Get all videos that a user appears in. GET #
    #
    # user_id = the user's ID or username

    def self.user_appearances(user_id)
      get("/users/#{user_id}/appearances")
    end

    ##################### Channels ####################

    # Get a list of the Channels a user follows. GET #
    #
    # user_id = the user's ID or username

    def self.followed_channels(user_id)
      get("/users/#{user_id}/channels")
    end

    # Check if a user follows a Channel. GET #
    #
    # user_id = the user's ID or username

    def self.follows_channel?(user_id, channel_id)
      get("/users/#{user_id}/channels/#{channel_id}")
    end

    ##################### Groups ####################

    # Get a list of the Groups a user has joined. GET #
    #
    # user_id = the user's ID or username

    def self.groups(user_id)
      get("/users/#{user_id}/groups")
    end

    # Check if a user has joined a Group. GET #
    #
    # user_id = the user's ID or username

    def self.joined_group?(user_id, group_id)
      get("/users/#{user_id}/groups/#{group_id}")
    end

    ##################### Feed ####################

    # Get a list of the videos in your feed. GET #
    #
    # user_id = the user's ID or username

    def self.video_feed(user_id)
      get("/users/#{user_id}/feed")
    end

    ##################### Followers ####################

    # Get a list of the user's followers. GET #
    #
    # user_id = the user's ID or username

    def self.find_all_followers(user_id)
      get("/users/#{user_id}/followers")
    end

    ##################### Following ####################

    # Get a list of the users that a user is following. GET #
    #
    # user_id = the user's ID or username

    def self.user_following_list(user_id)
      get("/users/#{user_id}/following")
    end

    # Check if a user follows another user. GET #
    #
    # user_id = the user's ID or username

    def self.follows_user?(user_id, follow_user_id)
      get("/users/#{user_id}/following/#{follow_user_id}")
    end

    ##################### Likes ####################

    # Get a list of videos that a user likes. GET #
    #
    # user_id = the user's ID or username

    def self.likes(user_id)
      get("/users/#{user_id}/likes")
    end

    # Check if a user likes a video. GET #
    #
    # user_id = the user's ID or username

    def self.likes_video?(user_id, video_id)
      get("/users/#{user_id}/likes/#{video_id}")
    end

    ##################### Pictures ####################

    # Get a list of this user's portrait images. GET #
    #
    # user_id = the user's ID or username

    def self.pictures(user_id)
      get("/users/#{user_id}/pictures")
    end

    # Check if a user has a portrait. GET #
    #
    # user_id = the user's ID or username

    def self.has_portrait(user_id, portraitset_id)
      get("/users/#{user_id}/pictures/#{portraitset_id}")
    end

    ##################### Portfolios ####################

    # Get a list of Portfolios created by a user. GET #
    #
    # user_id = the user's ID or username

    def self.portfolios(user_id)
      get("/users/#{user_id}/portfolios")
    end

    # Get a portfolio. GET #
    #
    # user_id = the user's ID or username

    def self.find_portfolio(user_id, portfolio_id)
      get("/users/#{user_id}/portfolios/#{portfolio_id}")
    end

    # Get the videos in this Portfolio. GET #
    #
    # user_id = the user's ID or username

    def self.portfolio_videos(user_id, portfolio_id)
      get("/users/#{user_id}/portfolios/#{portfolio_id}/videos")
    end

    # Check if a Portfolio contains a video. GET #
    #
    # user_id = the user's ID or username

    def self.portfolio_has_video?(user_id, portfolio_id, video_id)
      get("/users/#{user_id}/portfolios/#{portfolio_id}/videos/#{video_id}")
    end

    ##################### Presets ####################

    # Get all presets created by the authenticated user. GET #
    #
    # user_id = the user's ID or username

    def self.presets(user_id)
      get("/users/#{user_id}/presets")
    end

    # Get a preset. GET #
    #
    # user_id = the user's ID or username

    def self.find_preset(user_id, preset_id)
      get("/users/#{user_id}/presets/#{preset_id}")
    end

    # Get videos that have the provided preset. GET #
    #
    # user_id = the user's ID or username

    def self.find_videos_by_preset(user_id, preset_id)
      get("/users/#{user_id}/presets/#{preset_id}/videos")
    end

    ##################### Videos ####################

    # Get a list of videos uploaded by a user. GET #
    #
    # user_id = the user's ID or username

    def self.videos(user_id)
      get("/users/#{user_id}/videos")
    end

    # Check if a user owns a clip. GET #
    #
    # user_id = the user's ID or username

    def self.owns_clip?(user_id, video_id)
       get("/users/#{user_id}/videos/#{video_id}")
    end

    ##################### WatchLater ####################

    # Get the authenticated user's Watch Later queue. GET #
    #
    # user_id = the user's ID or username

    def self.watch_queue(user_id)
      get("/users/#{user_id}/watchlater")
    end

    # Check if a video is in authenticated user's Watch. GET #
    #
    # user_id = the user's ID or username

    def self.vidoe_in_queue?(user_id, video_id)
      get("/users/#{user_id}/watchlater/#{video_id}")
    end

    ##################### UploadTickets ####################

    # Get an upload ticket. GET #
    #
    # user_id = the user's ID or username

    def self.tickets(user_id, ticket)
      get("/users/#{user_id}/tickets/#{ticket}")
    end

    ##################### OnDemand ####################

    # Get a user's On Demand pages. GET #
    #
    # user_id = the user's ID or username

    def self.ondemand_pages(user_id)
      get("/users/#{user_id}/ondemand/pages")
    end

    # Check if an On Demand page is in your library. GET #
    #
    # user_id = the user's ID or username

    def self.find_ondemand_page(user_id)
      get("/users/#{user_id}/ondemand/library")
    end
  end
end
