module Vimeo
  module Creativecommons
    class CreativeCommons < Vimeo::Base

      # Get all valid creative commons licenses

      def self.info
        get("/creativecommons?access_token=#{access_token}")
      end
    end
  end
end