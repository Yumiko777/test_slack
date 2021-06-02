require "slack-notify"
require 'clockwork'

include Clockwork

handler do |job|
  puts "Running #{job}"
  client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
  client.notify("Hello There!")
end

every(3.minutes, 'less.frequent.job')
