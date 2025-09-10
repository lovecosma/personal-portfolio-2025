class CreateTechTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :tech_types do |t|
      t.string :name , null: false
      t.string :icon_filename
      t.integer :rank
      t.timestamps
    end
  end
end
