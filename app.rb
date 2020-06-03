require_relative 'config/environment'
require_relative 'models/pigLatinizer.rb'

class App < Sinatra::Base

    get '/' do

    erb :user_input
    end

    post '/piglatinize' do
    @piglatin = PigLatinizer.new.translate(params[:string]) 

    erb :results
    end

end

