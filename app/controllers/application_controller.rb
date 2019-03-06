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

    erb :recipe
  end
end
