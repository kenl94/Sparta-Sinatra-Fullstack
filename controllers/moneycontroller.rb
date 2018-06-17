class MoneyController < Sinatra::Base

  set :root,
  File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new {File.join(root,"views")}

  configure :development do
    register Sinatra::Reloader
  end

  get '/money' do
    @title = 'Money posts'

    @posts = Money.all
    
    erb :"money/index"
  end

  get '/money/new' do
    "new page"
  end

  get '/money/:id' do
    "show page"
  end

  post '/money' do
    "create"
  end

  get '/money/:id' do
    "even"
  end

  put '/money/:id' do
    "update"
  end

  delete '/money/:id' do
    "destroy"
  end

end
