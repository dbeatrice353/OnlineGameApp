class AddScoreAndUserIdToAttempts < ActiveRecord::Migration
  def change
    add_column :attempts, :user_id, :integer
    add_column :attempts, :score, :integer
  end
end
