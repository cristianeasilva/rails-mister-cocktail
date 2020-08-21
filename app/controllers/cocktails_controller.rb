class CocktailsController < ApplicationController

  def new
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end


end
