class TopController < ApplicationController
  def top
    @posts = Post.all
    key = "pSCglKF5uFWoSzJvPCcI"
    url =  "https://api.mozambiquehe.re/bridge?version=4&platform=PC&player=HeyImLifeline&auth=#{key}"
    uri = URI.parse(url)
    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
  end
end
