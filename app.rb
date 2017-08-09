require "sinatra"

require_relative "coin.rb"
get '/' do
erb :index
end
get '/about_us' do
	erb :about_us 
end
get '/top_world' do
	erb :top_world
end
get'/top_10_us' do
	erb :top_10_us
end
get '/top_parks' do
	erb :top_parks
end





get '/index' do
	erb :index
end
post '/index' do
	puts "MADE IT TO  POST INDEX DO"
	amount = params[:amount]

	puts "amount is #{amount}"
	
	coins = params[:coins]
	coins = coin_changer(amount)
	redirect '/contact?amount='+ amount + '&coins=' + coins 
end
get '/contact' do
	puts "MADE IT TO GET CONTACT DO"
	amount = params[:amount]
	puts "amount is #{amount}"
	coins = params[:coins]
	returned = params[:returned]
	erb :contact, :locals=>{:amount => amount, :coins=> coins}
end

post '/contact' do
	puts "MADE IT TO POST CONTACT DO"

	amount = params[:amount]
	coins = params[:coins]
 	puts "amount is #{amount}"
 	puts "coins are #{coins}"
 		
 		
	# if coins[quarter]=1
	# 	coins[quarter]=coins[quarter]
	
	# else coins[quarter]>1
	# 	coins[quarter] = coins[quarters]
	# end

end


