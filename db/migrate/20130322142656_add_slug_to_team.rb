class AddSlugToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :slug, :string
    add_index :teams, :slug, unique: true
  end
end
