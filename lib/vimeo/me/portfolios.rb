module Vimeo
  module Me
    class Portfolios < Vimeo::Base

      # Get a list of the user's followers

      def self.info
        get("/me/portfolios?access_token=#{access_token}")
      end

      # Get a portfolio

      def self.get_portfolio(portfolio_id, access_token)
        get("/me/portfolios/#{portfolio_id}?access_token=#{access_token}")
      end

      # Get the videos inside a specific portfolio

      def self.portfolio_videos(portfolio_id, access_token)
        get("/me/portfolios/#{portfolio_id}/videos?access_token=#{access_token}")
      end

      # Check if a portfolio contains a video

      def self.has_video?(portfolio_id, video_id, access_token)
        get("/me/portfolios/#{portfolio_id}/videos/#{video_id}?access_token=#{access_token}")
      end
    end
  end
end