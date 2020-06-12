# require modules here

require 'yaml'

def load_library(yaml_file)
  # code goes here
  
  library = YAML.load_file(yaml_file)
  
  emoticons_library = {}
  
    library.each do | key_emoticon_name, value_eng_jap_in_array |
      emoticons_library[key_emoticon_name] = {}
      emoticons_library[key_emoticon_name][:english] = value_eng_jap_in_array[0]
      emoticons_library[key_emoticon_name][:japanese] = value_eng_jap_in_array[1]
    
    end
  emoticons_library
end
  
  

def get_japanese_emoticon(file_path, western_emoticon)
  # code goes here
  
  emoticon_library = load_library(file_path)
  
  japanese_translation = nil
  emoticon_library.each do | key_emoticon_name, value |
    value.each do | language, emoticon |
      if language == :english && emoticon == western_emoticon
        japanese_translation = emoticon_library[key_emoticon_name][:japanese]
      end      
    end
  end
  japanese_translation == nil ? "Sorry, that emoticon was not found" : japanese_translation
end



def get_english_meaning (file_path, japanese_emoticon)
  # code goes here
  
  emoticon_library = load_library(file_path)
  
  english_translation = nil
  emoticon_library.each do | key_emoticon_name, value |
    value.each do | language, emoticon |
      if language == :japanese && emoticon == japanese_emoticon
         english_translation = key_emoticon_name
      end  
    end
  end
  english_translation == nil ? "Sorry, that emoticon was not found" : english_translation
end
  
