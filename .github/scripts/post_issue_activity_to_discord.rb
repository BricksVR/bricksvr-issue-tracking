require 'optparse'

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
end.parse!

puts options