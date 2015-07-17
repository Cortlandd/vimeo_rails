module Vimeo
  module Categories
    class Groups < Vimeo::Base

      # Get a list of Groups related to a category.

      def self.info(category, access_token)
        get("/categories/#{category}/groups?access_token=#{access_token}")
      end

    end
  end
end
