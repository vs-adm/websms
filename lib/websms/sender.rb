require 'curl'
require 'iconv'

module Websms
  class Sender

    def self.send_message(to, text)
      # Return immediatly and silently if user does not set SMS number
      return false if to.empty?
      raise ArgumentError, "Empty text, wont send it" if text.empty?

      # Get configuration
      c = Websms.configuration

      # SMS Gate settings
      sms_gateway = "http://websms.ru/http_in4.asp"
      sms_user = c.api_user
      sms_password = c.api_password
      # Filter number
      number = to.gsub(/[^\d]/, '')
      # Prepare text
      text = "#{c.client_id}: #{text}" if c.client_id
      etext = text.gsub(' ', '%20')
      etext = Iconv.conv('windows-1251', 'utf-8', etext)
      # Send request
      request = "#{sms_gateway}?fromPhone=LocumRu&http_username=#{sms_user}&http_password=#{sms_password}&Phone_list=#{number}&Message=#{etext}"
      c = Curl::Easy.perform(request)
    end

  end

end