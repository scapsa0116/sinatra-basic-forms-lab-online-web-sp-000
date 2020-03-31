require_relative 'config/environment'
require_relative 'models/puppy.rb'
class App < Sinatra::Base
  
    get '/' do 
     erb :create_puppy
    end 

# post '/puppy' do 
#   erb :create_puppy
# end 

# get '/puppy'
# erb :display_puppy
# end 

  post '/puppy' do 
     @puppy = Puppy.new{params[:name]}
    erb :display_puppy
  end 
 

end
