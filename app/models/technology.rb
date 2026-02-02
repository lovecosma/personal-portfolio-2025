class Technology < ApplicationRecord
	belongs_to :tech_type

	validates :name, presence: true, uniqueness: { scope: :tech_type_id }
	validates :rank, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true

	scope :ordered, -> { order(:rank) }
end
