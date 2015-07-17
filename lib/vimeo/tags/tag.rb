module Vimeo
  module Tags
    class Tag < Vimeo::Base

      # Get a tag

      def self.info(word, access_token)
        get("/tags/#{word}?access_token=#{access_token}")
      end
    end
  end
end