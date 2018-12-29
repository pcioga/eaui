class AddMissingAttributesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :country, :string
    add_column :users, :english_p, :integer
  end
end
