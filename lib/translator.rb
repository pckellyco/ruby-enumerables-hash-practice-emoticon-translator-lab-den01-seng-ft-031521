# require modules here

require 'yaml'
require 'pry'

# load yml file
# extract values from file
# create key = emoticons
# values =
# english:
# japanese:

def load_library(file)
  emoticons = YAML::parse(File.load(file))
  emoticons
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end