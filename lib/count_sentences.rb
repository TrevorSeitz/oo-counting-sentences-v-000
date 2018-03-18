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
    count = 0
    sentence_end = [".", "!", "?", "..."]
    sentence_end.any? {|punctuation|
      if self.end_with?(punctuation)
        count +=1
      end}

    count
  end
end
