class FoodController < ApplicationController
  def show 
    @recipe = Recipe.find_by(id: params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    @recipe = Recipe.new
    @recipe.caption = params['caption']
    @recipe.url = params['url']
    @recipe.user_id = params['user_id']
    if @recipe.save
      redirect_to "/food/#{ @recipe.id }"
    else
      render 'new'
    end
  end
  
  def edit
    @recipe = Recipe.find_by(id: params['id'])
  end
  
  def update
    @recipe = Recipe.find_by(id: params['id'])
    @recipe.caption = params['caption']
    @recipe.url = params['url']
    @recipe.user_id = params['user_id']
    if @recipe.save
      redirect_to "/food/#{ @recipe.id }"
    else
      render 'edit'
    end
  end
  
  def destroy
    @recipe = Food.find_by(id: params['id'])
    @recipe.destroy
    redirect_to "/food"
  end
  
  def index
    @foods = Recipe.all
  end
end