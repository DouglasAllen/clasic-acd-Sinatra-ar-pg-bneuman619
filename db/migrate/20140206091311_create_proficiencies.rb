class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :years
      t.boolean :formal
      t.references :user
      t.references :skill
    end
  end
end
