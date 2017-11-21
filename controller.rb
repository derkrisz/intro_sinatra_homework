require('sinatra')
require('sinatra/reloader')
require_relative('./models/game.rb')

get '/rock/paper' do
  return 'paper wins'
end

get '/rock/scissors' do
  return 'rock wins'
end

# get '/:hand1/:hand2' do
#   # result = "#{params[:hand1]} wins"
#   case
#   when params[:hand1]=="scissors" && params[:hand2]=="rock"
#     result = "#{params[:hand2]} wins"
#   when params[:hand1]=="scissors" && params[:hand2]=="paper"
#     result = "#{params[:hand1]} wins"
#   when params[:hand1]=="rock" && params[:hand2]=="paper"
#     result = "#{params[:hand2]} wins"
#   when params[:hand1]=="rock" && params[:hand2]=="scissors"
#     result = "#{params[:hand1]} wins"
#   when params[:hand1]=="paper" && params[:hand2]=="scissors"
#     result = "#{params[:hand2]} wins"
#   when params[:hand1]=="paper" && params[:hand2]=="rock"
#     result = "#{params[:hand1]} wins"
#   end
#   # return result
# end

get '/compare/:hand1/:hand2' do
games = Game.new(params[:hand1], params[:hand2])
@winner = games.compare
erb ( :winner )
end

get '/rules' do
  erb ( :rules)
end
