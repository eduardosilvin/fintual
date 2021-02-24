class HomeController < ApplicationController
 def index
    require 'net/http'
    require 'json'

  @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&CMC_PRO_API_KEY=5894a67d-3383-4aeb-8570-859a9db095c9'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @coins = @coins
    @my_coins = ["BTC", "XRP", "ADA", "XML", "STEEM"]
  end
   
  def about
  end 

  def lookup
    require 'net/http'
    require 'json'

    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&CMC_PRO_API_KEY=5894a67d-3383-4aeb-8570-859a9db095c9'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coins = JSON.parse(@response)
    @lookup_coins = @lookup_coins['data']

    @symbol = params[:sym]

    if @symbol 
      @symbol = @symbol.upcase
    end


  end

end
