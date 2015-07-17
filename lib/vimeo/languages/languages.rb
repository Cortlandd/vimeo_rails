module Vimeo
  module Languages
    class Languages < Vimeo::Base

      # Get all valid video languages

      def self.info
        get("/languages?access_token=#{access_token}")
      end
    end
  end
end