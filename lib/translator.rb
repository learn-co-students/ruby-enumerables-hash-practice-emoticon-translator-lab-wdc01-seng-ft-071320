require 'pry'
require "yaml"

def load_library(file_path)
  revised_emoticons = Hash.new
  emoticons_list = YAML.load_file(file_path)
  emoticons_list.each do |key, value|
    revised_emoticons[key] = {}
      revised_emoticons[key][:english] = value[0]
      revised_emoticons[key][:japanese] = value[1]
    end
  revised_emoticons
end


def get_english_meaning(file_path, japemoticon)
  thelist = load_library(file_path)
  thelist.each do |key, value|
    if value[:japanese] == japemoticon
      return key
    end
  end
  return "Sorry, that emoticon was not found"
end


def get_japanese_emoticon(file_path, engemoticon)
  thelist = load_library(file_path)
  thelist.each do |key, value|
    if value[:english] == engemoticon
      return value[:japanese]
    end
  end
    return "Sorry, that emoticon was not found"
end
