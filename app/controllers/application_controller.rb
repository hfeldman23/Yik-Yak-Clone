require "./config/environment"
require "./app/models/Yak"

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, "public"
    set :views, "app/views"

  end

  get "/" do
    @all_yaks = Yak.all
    puts @all_yaks
    erb :index
    
  end
  
  post '/new_yak' do
    Yak.create({:message => params[:message]})
    redirect to "/"
    
  end
  
end