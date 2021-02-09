# require modules here

# load yml file
# extract values from file
# create new hash

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

require 'yaml'

require 'pry'

def get_japanese_emoticon(file, string)
  emoticon_library = load_library(file)
  symbols = emoticon_library.each do |key, value|
    if emoticon_library[key][:english] == string
      emoticon_library[key][:japanese]
       binding.pry
    end
  end
end

def get_english_meaning
  # code goes here
end