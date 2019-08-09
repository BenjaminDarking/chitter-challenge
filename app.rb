require 'sinatra/base'
require_relative './lib/chitter.rb'
require_relative './lib/peep.rb'

class NewChitter < Sinatra::Base

  enable :sessions

  get '/' do
    redirect('/welcome')
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    Peep.new(params[:username], params[:email], params[:password])
  end

  get '/log_in' do
    erb :log_in
  end

  post '/log_in' do

  end

  get '/welcome' do
    erb :welcome
  end

  post '/new_peep' do
    Peep.create(text: params[:text])
    redirect('/welcome')
  end

  run! if app_file == $0

end
