class SharesController < Sinatra::Base

  set :root,
  File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new {File.join(root,"views")}

  configure :development do
    register Sinatra::Reloader
  end

  get '/shares' do
    "index page"

    erb :'shares/index'
  end

  get '/shares/new' do
    "new page"
  end

  get '/shares/:id' do
    "show page"
  end

  post '/shares' do
    "create"
  end

  get '/shares/:id' do
    "even"
  end

  put '/shares/:id' do
    "update"
  end

  delete '/shares/:id' do
    "destroy"
  end

end
