#!/bin/ruby
# words longer than 4 characters have vowels omitted
#
def abbreviate_sentence(sent)
  words = sent.split
  sent = ""
  words.each do |word|
    if word.length > 4
      word.each_char do |char|
        if char != "a" && char != "e" && char != "i" && char != "o" && char != "u"
          sent += char
        end
      end
    else
      sent += word
    end
    sent += " "
  end
  return sent
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
