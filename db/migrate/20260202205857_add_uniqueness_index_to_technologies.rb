class AddUniquenessIndexToTechnologies < ActiveRecord::Migration[8.0]
  def change
    add_index :technologies, [:name, :tech_type_id], unique: true
  end
end
