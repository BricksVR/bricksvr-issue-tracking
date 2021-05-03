require 'optparse'
require "discordrb"

DISCORD_GITHUB_FEED_CHANNEL = "838768520194949210"

options = {}
OptionParser.new do |opts|
  opts.on("-tTYPE", "--type=TYPE") do |v|
    options[:type] = v
  end

  opts.on("-uURL", "--url=URL") do |v|
    options[:url] = v
  end

  opts.on("-nName", "--name=NAME") do |v|
    options[:name] = v
  end

  opts.on("tokenTOKEN", "--token=TOKEN") do |v|
    options[:token] = v
  end
end.parse!

bot = Discordrb::Bot.new token: options[:token]

emoji = options[:type] == "opened" ? ":green_circle:" : ":red_circle"
bot.send_message(DISCORD_GITHUB_FEED_CHANNEL, "#{emoji} Issue #{options[:type]}: **#{options[:name]}**\n\n#{options[:url]}")