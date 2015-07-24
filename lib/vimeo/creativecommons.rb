module Vimeo
  class Creativecommons < Vimeo::Base

    ##################### CreativeCommons ####################

    # Get all valid Creative commons licenses. GET #

    def self.all
      get('/creativecommons')
    end
  end
end
