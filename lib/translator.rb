require 'yaml'
require 'pry'



def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {}
  emoticons.each do |key, value|
  new_hash[key] = {:english=> value[0], :japanese=> value[1]}
  
end
new_hash
end

def get_japanese_emoticon(path, emoticons)
       emoticons = load_library(path) 
  result = emoticons["get_japanese_emoticon"][emoticons]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end 


def get_english_meaning(path, emoticons)
    
    emoticons = load_library(path)
     
  result = emoticons["get_meaning"][emoticons] 
  
  if result
     result
  else
    "Sorry, that emoticon was not found"
  end
 end
 
