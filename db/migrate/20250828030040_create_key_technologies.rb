class CreateKeyTechnologies < ActiveRecord::Migration[8.0]
  def change
    create_table :key_technologies do |t|
      t.string :alt
      t.string :name
      t.string :filename
      t.timestamps
    end
  end
end
