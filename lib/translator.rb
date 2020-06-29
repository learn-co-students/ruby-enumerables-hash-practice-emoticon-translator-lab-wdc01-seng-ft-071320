# require modules here
require 'yaml'
require 'pry'

def load_library (file)
  # code goes here
  emoticons=YAML.load_file(file)
  new_emoticon_hash={}
  emoticons.each do |key, value|
    new_emoticon_hash[key]={}
    new_emoticon_hash[key][:english]=value[0]
    new_emoticon_hash[key][:japanese]=value[1]
  end
  new_emoticon_hash
end

def get_japanese_emoticon (file, emoticon)
  # code goes here
  new_emoticon_hash=load_library(file)
  japanese_emoticon="Sorry, that emoticon was not found"
  new_emoticon_hash.each do |key, value|
    if new_emoticon_hash[key][:english]==emoticon
      japanese_emoticon=new_emoticon_hash[key][:japanese]
    end
  end
  japanese_emoticon
end

def get_english_meaning(file, emoticon)
  # code goes here
  new_emoticon_hash=load_library(file)
  english_meaning="Sorry, that emoticon was not found"
  new_emoticon_hash.each do |key, value|
    if new_emoticon_hash[key][:japanese]==emoticon
      english_meaning=key
    end
  end
  english_meaning
end