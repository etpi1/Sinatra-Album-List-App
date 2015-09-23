# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
  @songs = Songs.all
  erb :'songs/index'
end

get '/songs/new' do
  @songs = Songs.new
  erb :'songs/new'
end

get '/songs/:id' do
  @songs = Songs.find params[:id]
  erb :'songs/show'
end

post '/songs' do
  @songs = Songs.new(
    title: params[:title],
    author: params[:author],
    url:  params[:url]
  )
  if @songs.save
    redirect '/songs'
  else
    erb :'songs/new'
  end
end

get '/users/new' do
  erb :'users/new'
end

post '/users/new' do
  @user = User.new(
    email: params[:email],
    username: params[:username],
    password:  params[:password]
    )
  if @user.save
    redirect '/songs'
  else
    erb :'users/new'
  end
end



