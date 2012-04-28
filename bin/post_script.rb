# write your post script!

require 'open-uri'

open("http://google.com") do |f|
  open("/Users/sue/tmp/hoge.txt", "w") do |out|
    out.puts(f.read)
  end
end
