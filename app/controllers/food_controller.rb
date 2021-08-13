class FoodController < ApplicationController
  def index
    @food = Food.all
  end

  def new
    @food = Food.new
    @brands = Brand.all.map { |brand| [brand.name, brand.id] }
    @categories = Food.categories
  end

  def edit
    @food = Food.find(params[:id])
    @brands = Brand.all.map { |brand| [brand.name, brand.id] }
    @categories = Food.categories
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to :food_index
    else
      @brands = Brand.all.map { |brand| [brand.name, brand.id] }
      @categories = Food.categories
      render :new
    end
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to :food_index
    else
      @brands = Brand.all.map { |brand| [brand.name, brand.id] }
      @categories = Food.categories
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to :food_index
  end

  private def food_params
    params[:food][:category] = params[:food][:category].to_i
    params.require(:food).permit([:product, :brand_id, :category, :calories])
  end
end
