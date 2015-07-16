module Vimeo
  module Contentratings
    class ContentRatings < Vimeo::Base

      # Get all valid content ratings

      def self.info
        get("/contentratings/?access_token=#{access_token}")
      end
    end
  end
end