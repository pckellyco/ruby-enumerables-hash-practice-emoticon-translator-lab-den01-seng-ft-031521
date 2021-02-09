# require modules here

# load yml file
# extract values from file
# create new hash

require 'yaml'
require 'pry'


def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons.each_with_object({}) do (|key, value|, new_hash)
    value.each do |language|
      binding.pry
      end
    end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end