class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.references :user
      t.string :exercise_type
      t.string :suggested_emotion
      t.integer :valence
      t.integer :arousal
      t.integer :video_id
    end
  end
end
