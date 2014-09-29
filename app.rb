require 'sinatra'
require 'mandrill' 

get '/' do  
	erb :index 
end 

post '/contact' do
 	m = Mandrill::API.new
	message = { 
	 :subject=> "comment", 
	 :from_name=> params[:name], 
	 :text=>params[:comment],
	 :to=>[{:email=> "nyhunter77@yahoo.com", :name=> "Ken"}], 
	 :html=>"<html><h1>Hi <strong>message</strong>, #{:comment}</h1></html>", 
	 :from_email=>params[:email] 
	} 
	sending = m.messages.send message 
	puts 'my params are' + params.inspect 
end

get '/story' do
	erb :ourStory
end
 
