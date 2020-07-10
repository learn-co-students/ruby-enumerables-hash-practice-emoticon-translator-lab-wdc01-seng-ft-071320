# require modules here
require 'pry'
require 'yaml'


  def load_library(emoticon_file)
  emoticon = YAML.load_file("./lib/emoticons.yml")
 
  new_hash = {}
  emoticon.each do |meaning, value|
    new_hash[meaning] = {:english=> value[0], :japanese=> value[1]}
 end
 new_hash
end

 
  
 
def get_japanese_emoticon(path, emoticon)
  new_hash  = load_library(path)
  new_hash.each do |meaning, value|
    if value[:english] == emoticon
      return value[:japanese]
  end
end
return "Sorry, that emoticon was not found"
end

###japanese_emoticon = new_hash[emoticon]
  #japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
  



def get_english_meaning(path, emoticon)
  new_hash  = load_library(path)
  new_hash.each do |meaning, value|
 
    if value [:japanese] == emoticon
      return meaning
    end
end
return "Sorry, that emoticon was not found"
end
