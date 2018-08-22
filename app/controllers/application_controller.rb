require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :super_hero
    end
    
    post '/' do
      @name = params[:team_name]
      @team_motto = params[:team_motto]
      erb :team
    end


end
