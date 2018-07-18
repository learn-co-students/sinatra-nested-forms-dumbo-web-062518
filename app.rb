require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @new_pirate = Pirate.new (params[:pirate])

      params[:pirate][:ships].each do |info|
        Ship.new(info)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
