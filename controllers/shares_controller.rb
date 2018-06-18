class SharesController < Sinatra::Base

  set :root,
  File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new {File.join(root,"views")}

  configure :development do
    register Sinatra::Reloader
  end

  get '/shares' do
    "index page"
    @shares = Share.all
    erb :'shares/index'
  end

  get '/shares/new' do
    @share = Share.new

    erb :'shares/new'
  end

  get '/shares/:id' do

    id = params[:id].to_i

    @share = Share.find id

    erb :'shares/show'
  end

  post '/shares/' do

    share = Share.new
    share.stock_name = params[:stock_name]
    share.market_cap = params[:market_cap]
    share.stock_market = params[:stock_market]
    share.stock_sybl = params[:stock_sybl]

    share.save

    redirect '/shares'


  end

  get '/shares/:id/edit' do
    id = params[:id].to_i

    @share = Share.find id

    erb :'shares/edit'
  end

  put '/shares/:id' do
    "update"

    id = params[:id].to_i

    share = Share.find id

    share.stock_name = params[:stock_name]
    share.market_cap = params[:market_cap]
    share.stock_market = params[:stock_market]
    share.stock_sybl = params[:stock_sybl]

    share.save

    redirect '/shares'
  end

  delete '/shares/:id' do

    id = params[:id].to_i

    Share.destroy id

    redirect '/shares'

  end

end
