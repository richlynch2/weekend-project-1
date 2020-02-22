class HeroesController < ApplicationController
  before_action :find_hero, only: %i(show destroy)
  def index
    @heroes = Hero.all
  end

  def show; end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    if @hero.save
      redirect_to hero_path(@hero)
    else
      render :new
    end
  end

  private

  def hero_params
    params.require(:hero).permit(:name, :photo)
  end

  def find_hero
    @hero = Hero.find(params[:id])
  end
end
