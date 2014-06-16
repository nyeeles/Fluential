require 'sinatra'

set :data, [
	{url: 'https://www.youtube.com/user/zoella280390',img:'./images/zoella.jpg', views: 2060532, description: 'Lifestyle and fashion beauty vlogger. Fashion and dating advice.'},
  {url: 'https://www.youtube.com/user/devinsupertramp',img:'./images/devin.jpg', views: 1063332, description: 'Talented filmmaker with a focus on extreme sports.'},
  {url: 'https://www.youtube.com/user/lindseystomp',img:'./images/joey.jpg', views: 8124534, description: 'Super eccentric, loveable boy next door. Fashion and lifestyle.'},
  {url: 'https://www.youtube.com/user/theslowmoguys',img:'./images/lindsey.jpg', views: 3024533, description: 'American violinist, dancer, performance artist, composer and musician.'},
  {url: 'https://www.youtube.com/user/sortedfood',img:'./images/sorted.jpg', views: 5532514, description: 'A group of friends who make delicious recipes easy for anyone to make.'},
  {url: 'https://www.youtube.com/user/epicmealtime',img:'./images/harley.jpg', views: 4122124, description: 'Crazy, epic, calorific meals that will blow your mind.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'./images/pentatonix.jpg', views: 7014235, description: 'The most amazing musical mashups you\'ll ever hear.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'./images/slowmo.jpg', views: 2352398, description: 'Beautiful cinematography shot at super high frame rates.'},
	{url: 'https://www.youtube.com/user/zoella280390',img:'./images/michelle.jpg', views: 253513, description: 'Makeup and beauty tutorials.'},
  {url: 'https://www.youtube.com/user/devinsupertramp',img:'./images/smosh.jpg', views: 135232, description: 'Funny sketches and other comedy performances.'},
  {url: 'https://www.youtube.com/user/lindseystomp',img:'./images/jenna.jpg', views: 235823, description: 'Funny sketches and parodies on real life.'},
  {url: 'https://www.youtube.com/user/theslowmoguys',img:'./images/dan.jpg', views: 2359823, description: 'Vlogger, radio DJ and teen heart throb'},
  {url: 'https://www.youtube.com/user/sortedfood',img:'./images/vsauce.jpg', views: 96432, description: 'Mind boggling science and education.'},
  {url: 'https://www.youtube.com/user/epicmealtime',img:'./images/ksi.jpg', views: 235229, description: 'Hilarious pranks and game-play.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'./images/karmin.jpg', views: 928332, description: 'Original music and incredible covers.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'./images/tyler.jpg', views: 897298, description: 'Vlogger focussed on lifestyle and LGBT.'},
	{url: 'https://www.youtube.com/user/zoella280390',img:'./images/bart.jpg', views: 324785, description: 'Crazy pranks and musical parodies.'},
  {url: 'https://www.youtube.com/user/devinsupertramp',img:'./images/pewdie.jpg', views: 235982, description: 'Biggest YouTuber in the world. Video games and vlogger.'},
  {url: 'https://www.youtube.com/user/lindseystomp',img:'./images/freddie.jpg', views: 9538283, description: 'Sci-fi, comedy and action filmmaker.'},
  {url: 'https://www.youtube.com/user/theslowmoguys',img:'./images/kandee.jpg', views: 532566, description: 'Makeup, style and home tutorials.'},
  {url: 'https://www.youtube.com/user/sortedfood',img:'./images/brodie.jpg', views: 225235, description: 'Extreme frisbee champion.'},
  {url: 'https://www.youtube.com/user/epicmealtime',img:'./images/cimorelli.jpg', views: 412644, description: 'Music covers and parodies.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'./images/bubz.jpg', views: 223566, description: 'Makeup and style tutorials.'},
  {url: 'https://www.youtube.com/user/ptxofficial',img:'./images/jack.jpg', views: 764344, description: 'Vlogger and teen heart throb.'}
]

get '/' do
	erb :index
end

post '/' do
	@influencers = settings.data.select do |channel| 
    channel[:description].include? params[:search]
  end
	erb :index
end
