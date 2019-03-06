class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    @all = Recipe.all
    erb :index
  end

  get '/recipes/:id' do
    binding.pry
    @recipe = Recipe.find(params["id"])
    erb :show
  end
end
