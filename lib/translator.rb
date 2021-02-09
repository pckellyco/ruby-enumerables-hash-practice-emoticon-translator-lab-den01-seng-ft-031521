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
  load_library(file).each do |emotion, languages|
    languages.find do |language, emoticon|
      
      if languages[:english] == english_emoticon
        return languages[:japanese]
      else 
        return"Sorry, that emoticon was not found"
      end
    end
  end
end

def get_english_meaning
  # code goes here
end