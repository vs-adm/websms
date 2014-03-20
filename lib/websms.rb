require "websms/version"
require 'websms/sender'
require 'websms/configuration'

module Websms


  # @return [Websms::Configuration]
  def self.configuration
    @configuration ||=  Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end

end
