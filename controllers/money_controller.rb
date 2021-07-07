class MoneyController < Sinatra::Base

  set :root,
  File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new {File.join(root,"views")}

  configure :development do
    register Sinatra::Reloader
  end

  get '/money' do
    @title = 'Money posts'

    @moneys = Money.all

    erb :'money/index'


  end

  get '/money/new' do


    @money = Money.new

    erb :'money/new'


  end

  get '/money/:id' do

    id = params[:id].to_i

    @money = Money.find id

    erb :'money/show'
  end

  post '/money/' do
    money = Money.new

    money.money_amount = params[:money_amount]
    money.currency = params[:currency]
    money.currency_code = params[:currency_code]

    puts money

    money.save

    redirect '/money'
  end

  get '/money/:id/edit' do
    id = params[:id].to_i

    @money = Money.find id

    erb :'money/edit'
  end

  put '/money/:id' do
    id = params[:id].to_i

    money = Money.find id

    money.money_amount = params[:money_amount]
    money.currency_code = params[:currency_code]
    money.currency = params[:currency]

    money.save

    redirect '/money'


  end

  delete '/money/:id' do
    id = params[:id].to_i

    Money.destroy id

    redirect '/money'
  end

end
