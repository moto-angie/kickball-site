require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  '<h1>The LACKP Homepage<h1>
  <a href="/teams">Teams</a>
  <br/>
  <a href="/positions">Positions</a>'
end

get '/teams' do
   @teams = Team.all
   erb :teams_index
end

get "/teams/:team_name" do
  @team_name = params[:team_name]
  @teams = Team.all
  erb :team_site
end

get '/positions' do
  erb :positions_index
end
