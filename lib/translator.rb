require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons.each_with_object({}) do |(key,value), final_array|
    emoticons[key] = {:english => value[0], :japanese => value[1]}
  end
emoticons
end

def get_japanese_emoticon(file1, emoji)
emoji_hash = load_library(file1)


emoji_hash.each do |(k, v)|
  if emoji_hash[k][:english] == emoji
    n = k
    japanese_value = emoji_hash[n][:japanese]
    return japanese_value
  end
end
return "Sorry, that emoticon was not found"
end

def get_english_meaning(file1, emoji)
emoji_hash = load_library(file1)


emoji_hash.each do |(k, v)|
  if emoji_hash[k][:japanese] == emoji
    n = k
    return n
  end
end
return "Sorry, that emoticon was not found"
end

