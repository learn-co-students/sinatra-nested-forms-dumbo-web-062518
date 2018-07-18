require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @name = params["pirate"]["name"]
      @weight = params["pirate"]["weight"]
      @height = params["pirate"]["height"]
      @ship_arr = params[:pirate][:ships]
      erb :'pirates/show'
    end
  end
end
