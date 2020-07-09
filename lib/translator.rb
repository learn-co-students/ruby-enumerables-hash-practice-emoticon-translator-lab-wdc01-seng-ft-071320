# require modules here
require 'yaml'
require 'pry'

def load_library(emoticon_library)
  # code goes here
  emoticon_library = YAML.load_file('lib/emoticons.yml')
  inner_hash = {}
  emoticon_library.each do |key, value|
    inner_hash[key] = {}
    inner_hash[key][:english] = value[0]
    inner_hash[key][:japanese] = value[1]
  end
  inner_hash
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  new_library = load_library(file_path)
  emoticon = new_library.keys.find do |key|
    new_library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end


def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  new_library = load_library(file_path)
  emoticon = new_library.keys.find do |key|
    new_library[key][:english] == emoticon
  end
  emoticon ? new_library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

