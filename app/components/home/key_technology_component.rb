# frozen_string_literal: true
module Home
	class KeyTechnologyComponent < ViewComponent::Base
	extend Dry::Initializer

	option :key_technology, type: Types::Instance(KeyTechnology)

	delegate :alt, :name, :filename, to: :key_technology

	end
end
