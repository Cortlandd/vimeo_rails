require 'vimeo/configuration'
require 'httparty'
require 'net/http/post/multipart'

# The first file loaded by default when the gem is required by Bundler.

module Vimeo

  # Because we want users to be able to both read and
  # write their configuration settings.
  class << self
  	attr_accessor :configuration
  end

  def self.configuration
  	@configuration ||= Configuration.new
  end

  # Ehh, someone might need it.
  def self.reset
    @configuration = Configuration.new
  end

  # The part that says a block will be passed
  def self.configure
    yield(configuration)
  end

end
