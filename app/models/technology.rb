class Technology < ApplicationRecord
	belongs_to :tech_type

	validates :name, presence: true, uniqueness: { scope: :tech_type_id }
end
