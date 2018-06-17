require "sinatra"
require "sinatra/reloader"
require "pg"
require_relative "./models/money.rb"
require_relative "./models/shares.rb"
require_relative "./controllers/indexcontroller.rb"
require_relative "./controllers/moneycontroller.rb"
require_relative "./controllers/sharescontroller.rb"

run Rack::Cascade.new([
  IndexController,
  MoneyController,
  SharesController
])
