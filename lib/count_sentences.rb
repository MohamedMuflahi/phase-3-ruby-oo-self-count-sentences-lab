require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    delimiters = ['.', "?", "!"]
    x = self.split(Regexp.union(delimiters))
    puts x
    y = x.select {|str| str != '' }
    y.length
    # x.length
  end
end