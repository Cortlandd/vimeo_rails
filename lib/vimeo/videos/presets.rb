module Vimeo
  module Videos
    class Presets < Vimeo::Base

      # Check if a video has a specific embed preset

      def self.has_embed_preset?(video_id, preset_id, access_token)
        get("/videos/#{video_id}/presets/#{preset_id}?access_token=#{access_token}")
      end
    end
  end
end