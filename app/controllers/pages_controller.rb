class PagesController < ApplicationController
	def home
		@tech_types = TechType.ordered.includes(:technologies)
		@sample_website_url = Rails.application.config.x.sample_website_url
		@resume_path = Rails.application.config.x.resume_path
	end

	def about

	end

	def contact

	end
end
