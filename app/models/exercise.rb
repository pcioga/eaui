class Exercise < ApplicationRecord
  belongs_to :user

  validates_presence_of :valence, :arousal, :exercise_type, :video_id
end
