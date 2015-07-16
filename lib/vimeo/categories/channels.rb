module Vimeo
  module Categories
    class Channels < Vimeo::Base

      # Get a list of Channels related to a category.

      def self.info(category, access_token)
        get("/categories/#{category}/channels/?access_token=#{access_token}")
      end

    end
  end
end