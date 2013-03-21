class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.boolean :mergecap
      t.string :name
      t.string :avatar
      t.integer :team_id

      t.timestamps
    end
  end
end
