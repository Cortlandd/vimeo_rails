module Vimeo
  module Categories
    class Categories < Vimeo::Base

      # Get a list of videos related to a category.

      def self.info(category, access_token)
        get("/categories/#{category}/videos?access_token=#{access_token}")
      end

    end
  end
end