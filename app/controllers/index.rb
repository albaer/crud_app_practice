get '/' do
  erb :index
end

get '/hats/new' do
  erb :'/hats/new'
end

post '/hats' do
  Hat.create(name: params[:name], description: params[:description], awesome: params[:awesome])
  redirect '/hats'
end

get '/hats' do
	@all_hats = Hat.all
	erb :hats
end

get '/hats/:id' do
  @hat = Hat.find_by_id(params[:id])
  erb :'/hats/show'
end

delete '/hats/:id' do
  @hat = Hat.find_by_id(params[:id])
  @hat.destroy
  redirect '/hats'
end

get '/hats/:id/edit' do
	@hat = Hat.find_by_id(params[:id])
  erb :'/hats/update'
end

put '/hats/:id' do
  @hat = Hat.find_by_id(params[:id])
  @hat.update_attributes(params[:hat])

  redirect "/hats/#{@hat.id}"
end