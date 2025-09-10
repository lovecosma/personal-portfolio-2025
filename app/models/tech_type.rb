class TechType < ApplicationRecord
	has_many :technologies
	validates :name, presence: true, uniqueness: true
	validates :icon_filename, presence: true
end
