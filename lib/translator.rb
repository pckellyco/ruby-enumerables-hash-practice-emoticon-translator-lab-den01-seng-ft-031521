# require modules here

# load yml file
# extract values from file
# create new hash

require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  answer = emoticons.each_with_object({}) do |(emoticon, symbol), new_hash|
    new_hash[emoticon] = {:english => symbol[0], :japanese => symbol[1]}
    new_hash
    end
end

# use load_library helper function 
# check input sympol to emoticon[:english],
# return matching emoticon[:japanese]

def get_japanese_emoticon(lo)
  # code goes here
end

def get_english_meaning
  # code goes here
end