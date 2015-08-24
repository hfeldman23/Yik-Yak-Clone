require "./config/environment"
require "./app/models/Yak"
# require "./app/models/user"

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
    Yak.create({:message => params[:message], :timestamp => Time.new.local})
    redirect "/"
  end

  post'/login' do
    User.create({:username => params[:username], :email => params[:email]})
    redirect "/"
  end
  
  
  
end