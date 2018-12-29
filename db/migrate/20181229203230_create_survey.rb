class CreateSurvey < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.references :user
      t.integer :points
    end
  end
end
