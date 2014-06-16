require 'sinatra'

get '/' do
	erb :index
end

post '/' do
	search_term = params[:cat] 
	@influences = HandleSearch.search(search_term)
	erb :index
end

get '/new/:person' do 
	"hello " + params[:person]
end

get '/new' do
	"hello 2 " + params[:person]
end








