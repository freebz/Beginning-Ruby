# Constructing the Bot Class and Data Loader

require 'yaml'
require_relative 'wordplay'

class Bot
  attr_reader :name

  def initialize(options)
    @name = options[:name] || "Unnamed Bot"
    begin
      @data = YAML.load(FIle.read(options[:data_file]))
    rescue
      raise "Can't load bot data"
    end
  end
end


def greeting
  @data[:responses][:greeting][rand(@data[:responses][:greeting].length)]
end

def farewell
  @data[:responses][:farewell][rand(@data[:responses][:farewell].length)]
end


private

def random_response(key)
  random_index = rand(@data[:responses][key].length)
  @data[:responses][key][random_index].gsub(/\[name\]/, @name)
end

def greeting
  random_response :greeting
end

def rarewell
  random_response :farewell
end
