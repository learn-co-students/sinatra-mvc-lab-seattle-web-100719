require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do
    piglatinizerObj = PigLatinizer.new
    
    @text_from_user = piglatinizerObj.piglatinize(params[:user_phrase])
    
    puts params

    erb :results
    end
end