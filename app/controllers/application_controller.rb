class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show 
    @recipe = Recipe.find_by_id(params["id"])
    render 'show'
  end
  
  def new
  end
  
  def create
    g = Recipe.new
    g.caption = params['caption']
    g.url = params['url']
    g.name = params['name']
    g.procedure = params['procedure']
    g.save
    redirect_to "/recipe/#{ g.id }"
  end
  
  def edit
    @recipe = Recipe.find_by_id(params['id'])
  end
  
  def update
    g = Recipe.find_by_id(params['id'])
    g.caption = params['caption']
    g.url = params['url']
    g.name = params['name']
    g.procedure = params['procedure']
    g.save
    redirect_to "/recipe/#{ g.id }"
  end
  
   def destroy
     g = Recipe.find_by_id(params['id'])
  g.destroy
     redirect_to "/recipe"
  end
  
  def index
    @recipes = Recipe.all
  end

end
