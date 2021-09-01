require 'pry'

class String

  def sentence?
    self.include?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.include?("!")
  end

  def count_sentences
    num_sentences = 0
    splits = [".", "?", "!"]

    self.each_char.with_index do |char, index|
      splits.each do |split|
        if (split == char) && ((self[index + 1]) != split)
          num_sentences += 1
        end
      end
    end
    num_sentences

    # count_sentences = self.split("." || "?" || "!")
    # num_sentences = count_sentences.length
    # num_sentences
    # binding.pry
  end
end