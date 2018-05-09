

##### require gems here?
# require 'browser'
# require 'user_agent_parser'

module Bunyan

	class << self
		##### config vars
		#mattr_accessor :something

		#self.something = 'default'
	end

	# this function maps the vars from your app into your engine
	def self.configure( &block )
		yield self
	end



	class Engine < ::Rails::Engine
		isolate_namespace Bunyan

		##### send application controller stuff? copied from swell_media
		# initializer "bunyan.load_helpers" do |app|
		# 	ActionController::Base.send :include, Bunyan::ApplicationControllerExtensions
		# end


		##### setup rspec testing??? copied from swell_analytics
		config.generators do |g|
			g.test_framework :rspec, :fixture => false
			g.fixture_replacement :factory_girl, :dir => 'spec/factories'
			g.assets false
			g.helper false
		end

	end
end
