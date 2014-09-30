require 'sinatra'
require 'mandrill' 

get '/' do  
	erb :index 
end

get '/story' do
	erb :ourStory
end

get '/menu' do
	erb :menu
end

get '/locations' do
	erb :locations
end

get '/order' do
	erb :order
end

 post '/' do
  	m = Mandrill::API.new
 	message = { 
 	 :subject=> "comment", 
 	 :from_name=> params["name"],
 	 :text=> params["comment"],
 	 :to=>[{:email=> "kenrickguie@gmail.com", :name=> "Ken"}], 
 	 :html=>"<html><h1>Hi <strong>message</strong>, #{params["comment"]}</h1></html>", 
 	 :from_email=>params["email"] 
 	} 
 	sending = m.messages.send message 
 	puts 'my params are' + params.inspect 
 end


 
