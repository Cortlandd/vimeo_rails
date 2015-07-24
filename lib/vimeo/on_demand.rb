module Vimeo
  class OnDemand < Vimeo::Base

    # View an existing On Demand page. GET #
    #
    # ondemand_id = ondemand movie title

    def self.ondemand_page(ondemand_id)
      get("/ondemand/pages/#{ondemand_id}")
    end

    # View an On Demand page's genre. GET #
    #
    # ondemand_id = ondemand movie title

    def self.ondemand_page_genre(ondemand_id)
      get("/ondemand/pages/#{ondemand_id}/genres")
    end

    # Check whether an On Demand page has an On Demand Genre. GET #
    #
    # ondemand_id = ondemand movie title

    def self.page_has_genre?(ondemand_id, genre_id)
      get("/ondemand/pages/#{ondemand_id}/genres/#{genre_id}")
    end

    # View an On Demand page's Regions. GET #
    #
    # ondemand_id = ondemand movie title

    def self.ondemand_page_regions(ondemand_id)
      get("/ondemand/pages/#{ondemand_id}/regions")
    end

    # Check whether an On Demand page has a region. GET #
    #
    # ondemand_id = ondemand movie title

    def self.page_has_region?(ondemand_id, country)
      get("/ondemand/pages/#{ondemand_id}/regions/#{country}")
    end

    # Get an On Demand page's pictures. GET #
    #
    # ondemand_id = ondemand movie title

    def self.ondemand_page_pictures(ondemand_id)
      get("/ondemand/pages/#{ondemand_id}/pictures")
    end

    # Get an existing picture on an On Demand. GET #
    #
    # ondemand_id = ondemand movie title

    def self.find_picture(ondemand_id, poster_id)
      get("/ondemand/pages/#{ondemand_id}/pictures/#{poster_id}")
    end

    ##################### Backgrounds ####################

    # Get an On Demand page's Backgrounds. GET #
    #
    # ondemand_id = ondemand movie title

    def self.backgrounds(ondemand_id)
      get("/onmand/pages/#{ondemand_id}/backgrounds")
    end

    # Get a Single Background on an OnDemand Page. GET #
    #
    # ondemand_id = ondemand movie title

    def self.find_background(ondemand_id, background_id)
      get("/ondemand/pages/#{ondemand_id}/backgrounds/#{background_id}")
    end

    # List all videos associated with an On Demand page. GET #
    #
    # ondemand_id = ondemand movie title

    def self.ondemand_videos(ondemand_id)
      get("/ondemand/pages/#{ondemand_id}/videos")
    end

    # Check if an On Demand page contains a video. GET #
    #
    # ondemand_id = ondemand movie title

    def self.has_video?(ondemand_id, video_id)
      get("/ondemand/pages/#{ondemand_id}/videos/#{video_id}")
    end

    ##################### Genres ####################

    # View all On Demand Genres. GET #

    def self.genres
      get('/ondemand/genres')
    end

    # View one Genre. GET #
    #
    # genre_id = genre name

    def self.find_genre(genre_id)
      get("/ondemand/genres/#{genre_id}")
    end

    # View a genre's On Demand pages. GET #
    #
    # genre_id = genre name

    def self.genre_page(genre_id)
      get("/ondemand/genres/#{genre_id}/pages")
    end

    # Check whether a genre contains a single On Demand Page. GET #
    #
    # genre_id = genre name ; ondemand_id = movie title

    def self.genre_has_video?(genre_id, ondemand_id)
      get("/ondemand/genres/#{genre_id}/pages/#{ondemand_id}")
    end

    ##################### Regions ####################

    # Get all On Demand Regions. GET #

    def self.regions
      get('/ondemand/regions')
    end

    # Get a single On Demand Region. GET #

    def self.find_region(country)
      get("/ondemand/regions/#{country}")
    end
  end
end
