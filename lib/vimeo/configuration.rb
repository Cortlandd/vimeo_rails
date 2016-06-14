require 'httparty'

# Vimeo.configure do |config|
#   config.access_token = ''
#   config.client_secret = ''
#   config.client_id = ''
# end

module Vimeo
  # Defines constants and methods related to configuration
  class Configuration
    attr_accessor :access_token, :client_secret, :client_id
    
    def initialize
      @access_token = nil
      @client_secret = nil
      @client_id = nil
    end

    # An array of valid keys in the options hash when configuring a Vimeo::API
    VALID_OPTIONS_KEYS = [
        :access_token,
        :adapter,
        :client_secret,
        :client_id,
        :connection_options,
        :endpoint
    ].freeze

    VALID_FORMATS = [:json].freeze

    # The adapter will be used to connect if none is set
    # considering switch to faraday
    DEFAULT_ADAPTER = HTTParty.connection_adapter

    # By default, a User access_token isn't set
    DEFAULT_ACCESS_TOKEN = nil

    # By default, a User client_id isn't set
    DEFAULT_CLIENT_ID = nil

    # By default, a User client_secret isn't set
    DEFAULT_CLIENT_SECRET = nil

    # By default, a connection option isn't set
    DEFAULT_CONNECTION_OPTIONS = {}

    # The endpoint that will be used if one isn't set already
    DEFAULT_ENDPOINT = 'https://api.vimeo.com'

    # The user agent that will be sent to the API endpoint if none is set
    DEFAULT_USER_AGENT = "Vimeo Rails Gem #{Vimeo::VERSION}".freeze

    # The response format appended to the path and sent in the 'Accept' header if none is set
    DEFAULT_FORMAT = :json

  end
end