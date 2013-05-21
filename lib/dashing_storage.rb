require 'mongo'
require 'yaml'

require "dashing_storage/version"

module DashingStorage
  def self.db
    return @db if @db
    @db = connection.db(config['database'])
    @db.authenticate(config['user'], config['password']) unless (config['user'].nil? || config['user'].empty?)
    @db
  end

  private

  def self.connection
    @connection ||= Mongo::Connection.new(config['host1'], config['port1'])
  end

  def self.config
    yml = YAML.load_file('database.yml')
    yml[env]
  end

  def self.env
    Sinatra::Application.environment.to_s
  end
end
