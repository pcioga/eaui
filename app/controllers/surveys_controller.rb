class SurveysController < ApplicationController
  respond_to :html, :xml, :json

  def new
  end
  
  def create
    @survey = Survey.new(survey_params)
    @survey.user = current_user
    if @survey.save
      #redirect_to controller: 'exercises', action: "video#{@exercise.video_id+1}", exercise_type: @exercise.exercise_type
      redirect_to controller: 'home', action:'final'
    else
      render :new
    end
  end

  def survey_params
    params.require(:survey).permit(:points)
  end
end
