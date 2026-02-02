class Technology < ApplicationRecord
	belongs_to :tech_type

	validates :name, presence: true
end
