module Vimeo
  class Categories < Vimeo::Base

    # Get a list of the top level categories. GET #

    def self.find_all
      get('/categories')
    end

    # Get a category. GET #
    #
    # category = category name

    def self.search(category)
      get("/categories/#{category}")
    end

    ##################### Channels ####################

    # Get a list of Channels related to a category. GET #
    #
    # category = category name

    def self.related_channels(category)
      get("/categories/#{category}/channels")
    end

    ##################### Groups ####################

    # Get a list of Groups related to a category. GET #
    #
    # category = category name

    def self.related_groups(category)
      get("/categories/#{category}/groups")
    end

    ##################### Videos ####################

    # Get a list of videos related to a category. GET #
    #
    # category = category name

    def self.videos(category)
      get("/categories/#{category}/videos")
    end
  end
end