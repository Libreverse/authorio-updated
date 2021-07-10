module Authorio
  class Engine < ::Rails::Engine
		isolate_namespace Authorio

		initializer "authorio.load_helpers" do |app|
			ActionController::Base.send :include, Authorio::Helpers
		end

		initializer "authorio.assets.precompile" do |app|
			app.config.assets.precompile += ['auth.css']
		end

  end
end
