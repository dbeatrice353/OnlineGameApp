class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|

      t.timestamps null: false
    end
  end
end
