require 'pry'
require "yaml"

def load_library(file_path)
  file = YAML.load_file('./lib/emoticons.yml')
  file.map do | key, value |
binding.pry
  {
      "#{key}" =>  {
      :english => value[0],
      :japanese => value[1]
        }
      }
file.map { |k, v| [k, v]}.to_h

has = hash[array.collect { |item| [item, "value"]}]

end
binding.pry
file

#binding.pry
end


def get_japanese_emoticon
#binding.pry
end

def get_english_meaning

end
#binding.pry
