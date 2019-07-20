require 'sinatra'
require_relative './lib/chitter.rb'
require_relative './lib/peep.rb'


class NewChitter < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    Peep.new(params[:username], params[:email], params[:password])
    redirect 'welcome'
  end

  get '/welcome' do
    erb :welcome
  end

  post '/new_peep' do
    Chitter.create(text: params[:text], peep_user: params[:peep_user])
    redirect('/home')
  end

run! if app_file == $0

end
