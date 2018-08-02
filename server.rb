require 'sinatra'

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['Git', 'HTML', 'CSS', 'Ruby']
  @interests = ['games', 'movies', 'music', 'coding']
  erb :about
end

get '/favourites' do
  @fav_links = ['https://www.twitter.com', 'https://www.youtube.com', 'https://www.reddit.com', 'https://www.thestar.com', 'https://www.theonion.com']
  erb :favourites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to ('/portfolio')
end
