# require modules here

# load yml file
# extract values from file
# create key = emoticons
# values =
# english:
# japanese:

require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end