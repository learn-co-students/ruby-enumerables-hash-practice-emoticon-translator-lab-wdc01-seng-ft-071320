  require "yaml"
  require 'pry'

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 translator = {}
 emoticons.each do |mood, value_array|
 translator[mood] = {:english => value_array[0], :japanese => value_array[1]}
 end
 translator
end



def get_japanese_emoticon(file_path, eng_emoticon)
  library = load_library(file_path)

  library.each do |key, values|
      if library[key][:english] == eng_emoticon
         return library[key][:japanese]
       end
     end
  "Sorry, that emoticon was not found"
end


def get_english_meaning(file_path, jap_emoticon)
  library = load_library(file_path)

      library.each do |key, values|
          if library[key][:japanese] == jap_emoticon
             return key
           end
      end
  "Sorry, that emoticon was not found"
end
