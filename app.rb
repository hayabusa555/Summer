require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

enable :method_override

# ポータルページ
get '/' do
  erb :index
end

# ログインページ
get '/login' do
  erb :login
end

post '/login_admin' do
  
end

# 新規登録ページ
get '/sign_up' do
  erb :sign_up
end

# 新規登録処理
post '/sign_up' do
  sign_up_params = {
    name: params[:name],
    email: params[:email],
    password: params[:password]
  }
  user = User.new(sign_up_params)
  user.save
end

#質問ページ
get '/article' do
  erb :article
end

#履歴ページ
get '/access' do
  erb :access
end

configure do
  set :server, :puma
end
