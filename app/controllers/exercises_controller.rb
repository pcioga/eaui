class ExercisesController < ApplicationController
  respond_to :html, :xml, :json
  
  def video1
  end
  def exercise1
    @exercise = Exercise.new
    @exercise.video_id = 1
    @exercise.exercise_type = ['sam', 'pme'].sample
    respond_with do |format|
      format.html { render 'exercise1' }
    end
  end
  def video2
    @exercise = Exercise.new
    @exercise.exercise_type = params[:exercise_type]
  end
  def exercise2
    @exercise = Exercise.new
    @exercise.video_id = 2
    @exercise.exercise_type = params[:exercise_type]
    puts @exercise.inspect
    respond_with do |format|
      format.html { render 'exercise2' }
    end
  end
  def video3
    @exercise = Exercise.new
    @exercise.exercise_type = params[:exercise_type]
  end
  def exercise3
    @exercise = Exercise.new
    @exercise.video_id = 3
    @exercise.exercise_type = 'pme'
    puts @exercise.inspect
    respond_with do |format|
      format.html { render 'exercise2' }
    end
  end
  def video4
  end
  def create
    @exercise = Exercise.new(exercise_params)
    @exercise.user_id = 1
    if @exercise.save
      redirect_to controller: 'exercises', action: "video#{@exercise.video_id+1}", exercise_type: @exercise.exercise_type
    else
      render :video3
    end
  end

  def exercise_params
    params.require(:exercise).permit(:arousal, :valence, :video_id, :exercise_type, :user_id)
  end
end
