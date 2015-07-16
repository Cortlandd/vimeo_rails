module Vimeo
  module Tags
    class Videos < Vimeo::Base

      # Get a list of videos associated with a tag

      def self.find_videos_with_tag(word, access_token)
        get("/tags/#{word}/?access_token=#{access_token}")
      end

    end
  end
end