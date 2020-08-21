class CocktailsController < ApplicationController

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
