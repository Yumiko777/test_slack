require "slack-notify"
require 'clockwork'

include Clockwork

handler do |job|
  puts "Running #{job}"
  client = SlackNotify::Client.new(webhook_url: ENV["WEBHOOK"])
  client.notify("Hello There!")
end

every(3.minutes, 'less.frequent.job')
