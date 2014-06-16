require 'sinatra'

get '/' do
	erb :index
end

post '/' do
	search_term = params[:search] 
	@influences = HandleSearch.search(search_term)
	erb :index
end