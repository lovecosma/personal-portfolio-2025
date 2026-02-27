class PagesController < ApplicationController
	def home
		expires_in 24.hours, public: true
		@tech_types = TechType.ordered.includes(:technologies)
		@sample_website_url = Rails.application.config.x.sample_website_url
		@resume_path = Rails.application.config.x.resume_path
	end

	def about
		expires_in 24.hours, public: true
	end

	def contact
		expires_in 24.hours, public: true
	end
end
