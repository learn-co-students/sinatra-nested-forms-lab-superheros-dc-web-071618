require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/team' do 
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        params[:heroes].each do |hero|
            Superhero.new(name: hero[:name], power: hero[:power], bio: hero[:bio])
        end
        @superheroes = Superhero.all
        erb :team
    end

end
