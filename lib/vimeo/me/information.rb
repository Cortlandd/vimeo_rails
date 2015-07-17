module Vimeo
  module Me
    class Information < Vimeo::Base

      # Get a Users information

      def self.info
        get("/me?access_token=#{access_token}")
      end

    end
  end
end