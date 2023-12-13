# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
Dotenv.load

require './app/adapters/controller/users_controller'

set :database, { adapter: 'sqlite3', database: ENV.fetch('DB_PATH', nil) }

post '/users' do
  { result: UserController.create(params) }.to_json
end
