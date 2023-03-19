require_relative 'config/environment'
require "pry"
class App < Sinatra::Base

    # configure do
    #     enable :sessions unless test?
    #     set :session_secret, "secret"
    # end

    get '/' do 
        erb :index
    end
    post '/checkout' do
        session[:item] = params[:item]
        @item = session[:item]

        #binding.pry

        erb :checkout
    end
end