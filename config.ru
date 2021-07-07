require "sinatra"
require "sinatra/reloader"
require "pg"
require_relative "./models/money.rb"
require_relative "./models/shares.rb"
require_relative "./controllers/index_controller.rb"
require_relative "./controllers/money_controller.rb"
require_relative "./controllers/shares_controller.rb"

use Rack::MethodOverride

run Rack::Cascade.new([
  IndexController,
  MoneyController,
  SharesController
])
