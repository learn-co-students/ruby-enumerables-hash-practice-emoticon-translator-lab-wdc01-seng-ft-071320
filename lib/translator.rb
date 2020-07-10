




# require modules 
require 'yaml'

def load_library(yaml_file)
  # code goes here
  response = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(yaml_file)
  library.each do |translation, emoticons|
    response["get_meaning"][emoticons[1]] = translation
    response["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  response
end

def get_japanese_emoticon(yaml_file, emoticon)
  # code goes here
  library = load_library(yaml_file)
  response = nil
  library["get_emoticon"].each do |english, japanese|
    if emoticon == english
      response = japanese
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
end

def get_english_meaning(yaml_file, emoticon)
  # code goes here
  library = load_library(yaml_file)
  response = nil
  library["get_meaning"].each do |emoticons, translation|
    if emoticons == emoticon
      response = translation
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
end