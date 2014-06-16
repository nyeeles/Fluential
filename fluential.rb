require 'sinatra'


set :data, [{url: 'https://www.youtube.com/user/zoella280390',img:'/zoella.jpg', views: 2060532, description: 'Lifestyle and fashion beauty vlogger. Fashion and dating advice.'},
  {url: 'https://www.youtube.com/user/devinsupertramp',img:'/devin.jpg', views: 1063332, description: 'Talented filmmaker with a focus on extreme sports.'},
  {url: 'https://www.youtube.com/user/lindseystomp',img:'/lindsey.jpg', views: 8124534, description: 'American violinist, dancer, performance artist and composer.'},
  {url: 'https://www.youtube.com/user/theslowmoguys',img:'/slowmo.jpg', views: 3024533, description: 'Beautiful cinematography shot at super high frame rates.'},
  {url: 'https://www.youtube.com/user/sortedfood',img:'/sorted.jpg', views: 5532514, description: 'A group of friends who make delicious recipes easy for anyone to make.'},
  {url: 'https://www.youtube.com/user/epicmealtime',img:'/harley.jpg', views: 4122124, description: 'Crazy, epic, calorific meals that will blow your mind.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'/pentatonix.jpg', views: 7014235, description: 'The most amazing musical mashups you\'ll ever hear.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'/bart.jpg', views: 2352398, description: 'Crazy pranks and musical parodies.'}
]

get '/' do
  @influences = settings.data
	erb :index
end

post '/' do
	@influences = settings.data.select do |channel| 
    channel[:description].include? params[:search]
  end
	erb :index
end
