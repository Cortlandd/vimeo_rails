module Vimeo
  class Me < Vimeo::Base

    ##################### Information ####################

    # Get a user. GET #

    def self.info
      get('/me')
    end

    ##################### Albums ####################

    # Get a list of a user's Albums. GET #

    def self.albums
      get('/me/albums')
    end

    # Get info on an Album. GET #

    def self.album_info(album_id)
      get("/me/albums/#{album_id}")
    end

    # Get a list of videos in an Album. GET #

    def self.album_videos(album_id)
      get("/me/albums/#{album_id}/videos")
    end

    # Check if an Album contains a video. GET #

    def self.has_video?(album_id, video_id)
      get("me/albums/#{album_id}/videos/#{video_id}")
    end

    ##################### Appearances ####################

    # Get all videos that a user appears in. GET #

    def self.videos_appearances
      get("/me/appearances")
    end

    ##################### Channels ####################

    # Get a list of the Channels a user follows. GET #

    def self.followed_channels
      get("/me/channels")
    end

    # Check if a user follows a Channel. GET #

    def self.follows?(channel_id)
      get("/me/channels/#{channel_id}")
    end

    ##################### Groups ####################

    # Get a list of the Groups a user has joined. GET #

    def self.groups
      get("/me/groups")
    end

    # Check if a user has joined a Group? GET #

    def self.joined_group?(group_id)
      get("get/groups/#{group_id}")
    end

    ##################### Feed ####################

    # Get a list of the videos in your feed. GET #

    def self.feed
      get("/me/feed")
    end

    ##################### Followers ####################

    # Get a list of the user's followers. GET #

    def self.followers_list
      get("/me/followers")
    end

    ##################### Following ####################

    # Get a list of the users that a user is following. GET #

    def self.following_list
      get("/me/following")
    end

    # Check if a user follows another user. GET #

    def self.follows_user?(follow_user_id)
      get("/me/following/#{follow_user_id}")
    end

    ##################### Likes ####################

    # Get a list of videos that a user likes. GET #

    def self.liked_videos
      get("/me/likes")
    end

    # Check if a user likes a video. GET #

    def self.likes_video?(video_id)
      get("/me/likes/#{video_id}")
    end

    ##################### Pictures ####################

    # Get a list of this user's portrait images. GET #

    def self.pictures
      get("/me/pictures")
    end

    # Check if a user has a portrait. GET #

    def self.has_portrait?(portraitset_id)
      get("/me/pictures/#{portraitset_id}")
    end

    ##################### Portfolios ####################

    # Get a list of Portfolios created by a user. GET #

    def self.portfolios
      get("/me/portfolios")
    end

    # Get a portfolio. GET #

    def self.find_portfolio(portfolio_id)
      get("/me/portfolios/#{portfolio_id}")
    end

    # Get the videos in this Portfolio. GET #

    def self.portfolio_videos(portfolio_id)
      get("/me/portfolios/#{portfolio_id}/videos")
    end

    # Check if a Portfolio contains a video. GET #

    def self.portfolio_has_video?(portfolio_id, video_id)
      get("/me/portfolios/#{portfolio_id}/videos/#{video_id}")
    end

    ##################### Presets ####################

    # Get all presets created by the authenticated user. GET #

    def self.presets
      get("/me/presets")
    end

    # Get a preset. GET #

    def self.find_preset(preset_id)
      get("/me/presets/#{preset_id}")
    end

    # Get videos that have provided preset. GET #

    def self.presets_videos(preset_id)
      get("/me/presets/#{preset_id}/videos")
    end

    ##################### Videos ####################

    # Get a list of videos uploaded by a user. GET #

    def self.videos
      get('/me/videos')
    end

    # Check if a user owns a clip. GET #

    def self.owns_clip?(video_id)
      get("/me/videos/#{video_id}")
    end

    ##################### WatchLater ####################

    # Get the authenticated user's Watch Later queue. GET #

    def self.watchlater_queue
      get('/me/watchlater')
    end

    # Check if a video is in the authenticated user's Watch Later queue. GET #

    def self.inside_queue?(video_id)
      get("/me/watchlater/#{video_id}")
    end

    ##################### OnDemand ####################

    # Get a user's On Demand pages. GET #

    def self.ondemand_pages
      get('/me/ondemand/pages')
    end

    ##################### OnDemand Library ####################

    # Get a users On Demand purchases and rentals. GET #

    def self.ondemand_library
      get('/me/ondemand/library')
    end

    # Check if an On Demand page is in your library. GET #

    def self.in_ondemand_library?(ondemand_id)
      get("/me/ondemand/library/#{ondemand_id}")
    end
  end
end