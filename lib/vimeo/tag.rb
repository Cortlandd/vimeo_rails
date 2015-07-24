module Vimeo
  class Tag < Vimeo::Base

    ##################### Tag ####################

    # Get a Tag. GET #

    def self.search(word)
      get("/tags/#{word}")
    end

    ##################### Videos ####################

    # Get a list of videos associated with a tag. GET #

    def self.videos(word)
      get("/tags/#{word}/videos")
    end
  end
end