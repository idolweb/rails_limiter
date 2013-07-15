module RailsLimiter
  class Railtie < ::Rails::Railtie
    initializer "rails_limiter.configure_view_controller" do |app|
      ActiveSupport.on_load :action_controller do
        include RailsLimiter::Limiter
      end
    end
  end
end