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

def get_japanese_emoticon(file, english_emoticon)
  emoticon_library = load_library(file)
  emoticon_library.each do |emotion, languages|
    languages.each do |language, emoticon|
      if languages[emoticon] == english_emoticon
        
  
  symbols = emoticon_library.each do |key, value|
    value.each do |language, symbol|
      if value[language][symbol] === string
      japanese_symbol = value[:japanese]
      japanese_symbol
    end
  end
end

def get_english_meaning
  # code goes here
end