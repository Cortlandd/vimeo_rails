module Vimeo
  class Video < Vimeo::Base

    ##################### Search ####################

    # Search for videos. GET #

    def self.search
      get('/videos')
    end

    ##################### Information ####################

    # Get a video. GET #

    def self.video_info(video_id)
      get("/videos/#{video_id}")
    end

    ##################### Credits ####################

    # Get a list of users credited on a video. GET #

    def self.credited_users(video_id)
      get("/videos/#{video_id}/credits")
    end

    ##################### TextTracks ####################

    # Get all the text tracks for a video. GET #

    def self.text_tracks(video_id)
      get("/videos/#{video_id}/texttracks")
    end

    # Get a single text track for a video. GET #

    def self.find_texttrack(video_id, texttrack_id)
      get("/videos/#{video_id}/texttracks/#{texttrack_id}")
    end

    ##################### RelatedVideos ####################

    # Get related videos. GET #

    def self.related_videos(video_id)
      get("/videos/#{video_id}/videos")
    end

    ##################### VideoCategories ####################

    # Get a list of all categories this video is in. GET #

    def self.video_categories?(video_id)
      get("/videos/#{video_id}/categories")
    end

    ##################### Credits ####################

    # Get a single credit. GET #

    def self.find_credit(video_id, credit_id)
      get("/videos/#{video_id}/credits/#{credit_id}")
    end

    ##################### Comments ####################

    # Get comments on this video. GET #

    def self.comments(video_id)
      get("/videos/#{video_id}/comments")
    end

    # Check if a video has a specific comment. GET #

    def self.has_comments?(video_id, comment_id)
      get("/videos/#{video_id}/comments/#{comment_id}")
    end

    # Get comments on this video. GET #

    def self.video_comments(video_id, comment_id)
      get("/videos/#{video_id}/comments/#{comment_id}/replies")
    end

    ##################### Pictures ####################

    # Get a list of this video's past and present pictures. GET #

    def self.pictures(video_id)
      get("/videos/#{video_id}/pictures")
    end

    # Get a single picture resource for a video. GET #

    def self.find_picture(video_id, picture_id)
      get("/videos/#{video_id}/pictures/#{picture_id}")
    end

    ##################### Likes ####################

    # Get a list of the users who liked this video. GET #

    def self.likes(video_id)
      get("/videos/#{video_id}/likes")
    end

    ##################### Presets ####################

    # Check if a video has a specific embed preset. GET #

    def self.has_preset?(video_id, preset_id)
      get("/videos/#{video_id}/presets/#{preset_id}")
    end

    ##################### Tags ####################

    # List all of the tags on the video. GET #

    def self.tags(video_id)
      get("/videos/#{video_id}/tags")
    end

    # Check if a tag has been applied to a video. GET #

    def self.has_tag?(video_id, word)
      get("/videos/#{video_id}/tags/#{word}")
    end

    ##################### Users ####################

    # Get all users that are allowed to see this video. GET #

    def self.allowed_users(video_id)
     get("/videos/#{video_id}/privacy/users")
    end

    ##################### EmbedDomains ####################

    # Retrieve the domains that are allowed to embed this video. GET #

    def self.video_domains(video_id)
      get("/videos/#{video_id}/privacy/domains")
    end
  end
end