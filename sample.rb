require "slack-notify"

sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'])
sample.notify("Hello There!")
