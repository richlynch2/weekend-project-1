class SkillsController < ApplicationController
    def new
    @hero = Hero.find(params[:hero_id])
    @skill = Skill.new
  end

  def create
    @hero = Hero.find(params[:hero_id])
    @skill = Skill.new(skill_params)
    @skill.hero = @hero
    if @skill.save
      redirect_to hero_path(@hero)
    else
      render :new
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to hero_path(@skill.hero)
  end

  private

  def set_skill; end

  def skill_params
    params.require(:skill).permit(:description, :action_id, :hero_id)
  end
end
