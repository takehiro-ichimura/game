class TopController < ApplicationController
  def top
    @posts = Post.all
  end
  def serch
    @noresult = '検索結果はありません'
    key = "pSCglKF5uFWoSzJvPCcI"
    #url =  "https://api.mozambiquehe.re/bridge?version=4&platform=PC&player=#{params[:username]}&auth=#{key}"
    url =  "https://api.mozambiquehe.re/bridge?platform=PC&player=#{params[:username]}&auth=#{key}"
    begin
      url
      uri = URI.parse(url)
      uri = URI.parse(url)
      json = Net::HTTP.get(uri)
      @result = JSON.parse(json)
    rescue => exception
      @noresult
    end


  end
  def serchtag

    @posts = Post.where(tags: params[:tag])
    
  end
end
