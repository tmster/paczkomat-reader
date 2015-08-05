module PaczkomatReader
  # Configurator for overriding default confg values
  # @example Override only cache_ttl only rubocop
  # Config.configure do |conf|
  #   conf.cache_ttl = 120
  # end
  class Config
    class << self
      attr_accessor :config

      # @return [PaczkomatReader::Config] config for dev tools
      # @note We check if it initialized, because if user wants to use it
      #   with any changes, he won't create a paczkomat_reader.rb initializer file so we need
      #   to configure it with defaults
      def config
        @config || setup {}
      end
    end

    # Define atrr accessors for all config options
    attr_accessor :api_path
    attr_accessor :cache_ttl

    # Initializes configuration and turn on by default
    # all the commands
    def initialize
      self.cache_ttl = 60
      self.api_path = 'https://api-pl.easypack24.net/v4/'
    end

    # Configurating method
    def self.setup(&block)
      self.config = new

      block.call(config)
      config.freeze
    end
  end
end
