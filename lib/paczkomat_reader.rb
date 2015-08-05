base_path = File.dirname(__FILE__) + '/paczkomat_reader/*.rb'
Dir[base_path].each { |file| require file }

module PaczkomatReader
  # This is just an alias so we can use it from Config directly
  # @return [PaczkomatReader::Config.config]
  def self.config
    Config.config
  end

  # Sets up the whole configuration
  # @param [Block] block
  def self.setup(&block)
    Config.setup(&block)
  end
end
