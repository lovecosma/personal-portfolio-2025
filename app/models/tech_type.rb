class TechType < ApplicationRecord
	has_many :technologies, dependent: :destroy
	validates :name, presence: true, uniqueness: true
	validates :icon_filename, presence: true
	validates :rank, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
	validate :icon_file_exists

	scope :ordered, -> { order(:rank) }

	private

	def icon_file_exists
		return if icon_filename.blank?

		icon_path = Rails.root.join("app/assets/images/icons", icon_filename)
		unless File.exist?(icon_path)
			errors.add(:icon_filename, "file does not exist: #{icon_filename}")
		end
	end
end
