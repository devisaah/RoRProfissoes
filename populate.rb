require 'net/http'
require 'net/https' # for ruby 1.8.7
require 'json'

module Populate
  def self.banks
    http = Net::HTTP.new('raw.githubusercontent.com', 443); http.use_ssl = true
    JSON.parse http.get('/devisaah/RoRProfissoes/master/professions.json').body
  end


  def self.create
    professions.each do |profession|
      Profession.create(
        description: profession['description'], 
        code: profession['code'],
        type: profession['type']
      ) 
      puts "Adding profession #{profession['description']}"
    end

  end
end

Populate.create
