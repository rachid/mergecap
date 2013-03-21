require 'net/http'

class Member < ActiveRecord::Base
  attr_accessible :avatar, :mergecap, :name

  def self.broadcast(channel = '/anyone', data)
    token = APP_SETTINGS['faye']['token']
    faye_server = APP_SETTINGS['faye']['server']
    message = {channel: channel, data: data, ext: { auth_token: token } }
    uri = URI.parse(faye_server)
    Net::HTTP.post_form(uri, message: message.to_json)
  end

  def self.push_me
    broadcast('/anyone', 'ping')
  end
end
