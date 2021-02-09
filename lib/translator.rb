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
  emotions = load_library(file)
  emotions.each do |emotion, language|
    if emotions[emotion][:english] == english_emoticon
        return emotions[emotion][:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file, japanese_emoticon)
  emotions = load_library(file)
  emotions.each do |emotion, language|
    if emotions[emotion][:japanese] == japanese_emoticon
        return emotion
    end
  end
  return "Sorry, that emoticon was not found"
end