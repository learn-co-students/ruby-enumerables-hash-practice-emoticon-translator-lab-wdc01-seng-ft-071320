# require modules here

require "yaml"
require "pry"



def load_library(emoticons)
  # code goes here
  library = YAML.load_file(emoticons)
  sorted_lib = {}
  # binding.pry
  library.each do |expression, emote|
    sorted_lib[expression] ={}
    sorted_lib[expression][:english]=emote[0]
    sorted_lib[expression][:japanese]=emote[1]
  end
  sorted_lib
end


def get_japanese_emoticon(source, emoticon)
  # code goes here
  library = load_library(source)
  japan_emote = "Sorry, that emoticon was not found"
  library.each do |expression, emoticons|
    if emoticons[:english] == emoticon
      japan_emote = emoticons[:japanese]
    end
end
   japan_emote
end





def get_english_meaning(source, emoticon)

  library = load_library(source)
  expression = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  expression ? expression: "Sorry, that emoticon was not found"
end
