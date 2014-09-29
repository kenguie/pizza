require 'sinatra'

get '/' do 
	erb :index
end

get '/story' do
	erb :ourStory
end
 
