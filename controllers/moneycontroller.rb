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


    @moneys = Money.new

    erb :'money/new'
  end

  get '/money/:id' do
    "show page"

    id = params[:id].to_i

    @money = Money.find id

    erb :'money/show'
  end

  post '/money' do
    "create"
  end

  get '/money/:id/edit' do
    "edit"

    erb :'edit.erb'
  end

  put '/money/:id' do
    "update"
  end

  delete '/money/:id' do
    "destroy"
  end

end
