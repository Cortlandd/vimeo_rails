module Vimeo
  module Me
    class Presets < Vimeo::Base

      # Get all presets created by the authenticated user.

      def self.info
        get("/me/presets/?access_token=#{access_token}")
      end

      # Get a preset.

      def self.get_preset(preset_id, access_token)
        get("/me/presets/#{preset_id}/?access_token=#{access_token}")
      end

      # Get videos that have a provided preset.

      def self.preset_videos_info(preset_id, access_token)
        get("/me/presets/#{preset_id}/videos/?access_token=#{access_token}")
      end
    end
  end
end