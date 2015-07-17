module Vimeo
  module Users
    class Presets < Vimeo::Base

      # Get all presets created by the authenticated user.

      def self.find_all(user_id, access_token)
        get("/users/#{user_id}/presets?access_token=#{access_token}")
      end

      # Get a preset.

      def self.get_preset(user_id, preset_id, access_token)
        get("/users/#{user_id}/presets/#{preset_id}?access_token=#{access_token}")
      end

      # Get videos that have the provided preset.

      def self.has_preset?(user_id, preset_id, access_token)
        get("/users/#{user_id}/presets/#{preset_id}/videos?access_token=#{access_token}")
      end
    end
  end
end