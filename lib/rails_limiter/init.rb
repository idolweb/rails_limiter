module RailsLimiter
  class Init
    attr_accessor :configuration

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end