class RailsLimiter::Init
  attr_accessor :configuration
  
  def self.configuration
    @configuration ||= RailsLimiter::Configuration.new
  end
  
  def self.configure
    yield(configuration)
  end
end