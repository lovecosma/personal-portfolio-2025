class CreateTechnologies < ActiveRecord::Migration[8.0]
  def change
    create_table :technologies do |t|
      t.string :name, null: false
      t.references :tech_type, null: false, foreign_key: true
      t.integer :rank
      t.timestamps
    end
  end
end
