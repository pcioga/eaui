class AddFeedbackToSurvey < ActiveRecord::Migration[5.1]
  def change
    add_column :surveys, :feedback, :text
  end
end
