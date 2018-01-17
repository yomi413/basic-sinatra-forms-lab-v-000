require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = params["name"]
    @coach = params["coach"]
    @pg = params["pg"]
    @sg = params["sg"]
    @pf = params["pf"]
    @sf = params["sf"]
    @center = params["center"]
    # @team = ["#{@team_name}", "#{@coach}", "#{@pg}", "#{@sg}", "#{@pf}", "#{@sf}", "#{@center}"]
    erb :team
  end

end
