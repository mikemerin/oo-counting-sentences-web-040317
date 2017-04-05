require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # this works as well:
    # self.split(/\?+|\.+|\!+/).count
    self.split.select { |x| x.sentence? || x.question? || x.exclamation? }.count
  end

end
