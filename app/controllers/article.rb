get '/articles' do
  erb :'articles/all'
end

post '/articles' do
  # p params
# ??????????????????
  category = Category.find_by(name: params[:category])
  new_article = category.articles.new(title: params[:title], body: params[:body])
  new_article.save
  redirect to("/articles/#{new_article.id}")
end

get '/articles/new' do
  # @passcode = secrand(8)
  erb :'articles/new'
end

get '/articles/:id' do
  @article = Article.find(params[:id])
  erb :'articles/show'
end

get '/articles/:id/edit' do
  @article = Article.find(params[:id])
  erb :'articles/edit'
end

put '/articles/:id' do
  article = Article.find(params[:id])
  article.title = params[:title]
  article.body = params[:body]
  article.save
  redirect to("/articles/#{article.id}")
end

delete '/articles/:id' do
  article = Article.find(params[:id])
  category = article.category
  article.destroy
  redirect to("/categories/#{category.name}")
end

