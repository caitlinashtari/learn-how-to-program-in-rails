class LessonsController < ApplicationController

  def new
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.new
  end

  def create
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.new(lesson_params)
    if @lesson.save
      redirect_to week_path(@lesson.week)
    else
      render :new
    end
  end

  def edit
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.find(params[:id])
  end

  def update
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to week_lesson_path(@lesson.week)
    else
      render :edit
    end
  end

  def show
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.find(params[:id])
  end


  def destroy
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.find(params[:id])
    @lesson.destroy
    redirect_to week_path(@week)
  end

  private
    def lesson_params
      params.require(:lesson).permit(:name, :content, :number)
    end
end
