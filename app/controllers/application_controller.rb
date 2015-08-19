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
    puts Time.now.strftime("%m %d %t")
    erb :index

  end

  post '/new_yak' do
    Yak.create({:message => params[:message], :timestamp => params[:timestamp]})
    redirect to "/"

  end

end