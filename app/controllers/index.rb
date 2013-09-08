get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  #TODO IMPLEMENT ME
  erb :event_create
end

post '/events/create' do
  #TODO IMPLEMENT ME
   @event = Event.new(params)
   p "*"*80
   p params
  if @event.save
    p @event
    redirect '/'
  else
    @errors = @event.errors
    erb :event_create
  end
end
