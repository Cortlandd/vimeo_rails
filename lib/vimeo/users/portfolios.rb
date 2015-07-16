module Vimeo
  module Users
    class Portfolios < Vimeo::Base

      # Get a list of Portfolios created by a user

      def self.portfolios(user_id, access_token)
        get("/users/#{user_id}/portfolios/?access_token=#{access_token}")
      end

      # Get a portfolio

      def self.get_portfolio(portfolio_id, access_token)
        get("/users/portfolios/#{portfolio_id}/?access_token=#{access_token}")
      end

      # Get the videos inside a specific portfolio

      def self.portfolio_videos(user_id, portfolio_id, access_token)
        get("/users/#{user_id}/portfolios/#{portfolio_id}/videos/?access_token=#{access_token}")
      end

      # Check if a portfolio contains a video

      def self.has_video?(portfolio_id, portfolio_id, video_id, access_token)
        get("/users/#{user_id}/portfolios/#{portfolio_id}/videos/#{video_id}/?access_token=#{access_token}")
      end
    end
  end
end