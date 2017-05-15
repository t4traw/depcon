require "depcon/version"

require 'yaml'

class String

  def depcon
    d = self.dup
    convert_dependent_char(d)
  end

  def depcon!
    convert_dependent_char(self)
  end

  private

    def convert_dependent_char(str)
      dic = YAML.load_file("#{File.dirname(__FILE__)}/dictionary.yml")
      dic.each do |key, val|
        str.gsub!(/#{key}/, val)
      end
      str
    end

end
