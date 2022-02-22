     
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'bcrypt'

enable :sessions

require_relative 'db/db'

require_relative 'models/shop'
require_relative 'models/user'

require_relative 'controllers/shop_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/users_controller'

require_relative 'helpers/sessions_helper'











