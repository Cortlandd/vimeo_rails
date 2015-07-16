module Vimeo
  module Me
    class Appearances < Vimeo::Base

      # Get all videos that a user appears in.

      def self.info
        get("/me/albums/?access_token=#{access_token}")
      end

    end
  end
end