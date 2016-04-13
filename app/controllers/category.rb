get '/categories' do
  erb :'categories/all'
end

get '/categories/:name' do
  name = params[:name].downcase.capitalize
  @category = Category.find_by(name: name)
  erb :'categories/show'
end
