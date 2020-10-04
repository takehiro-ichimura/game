class TopController < ApplicationController
  def top
    @posts = Post.all
    key = "pSCglKF5uFWoSzJvPCcI"
    url =  "https://api.mozambiquehe.re/bridge?version=4&platform=PC&player=HeyImLifeline&auth=#{key}"
    uri = URI.parse("https://jsonplaceholder.typicode.com/todos/1")
    @response = Net::HTTP.get_response(uri).body
  end
end
