  require "yaml"
  require 'pry'

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 translator = {}

 emoticons.each do |mood, value_array|
 translator["mood"] = {:english => "value_array[0]", :japanese => "value_array[1]"}
#binding.pry
 end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
