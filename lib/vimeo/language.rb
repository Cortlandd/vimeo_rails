module Vimeo
  class Language < Vimeo::Base

    ##################### Languages ####################

    # Get all valid video languages. GET #

    def self.info
      get('/languages')
    end
  end
end