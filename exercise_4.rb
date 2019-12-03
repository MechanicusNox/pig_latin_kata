# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

def pig_latin(word)
capital = false
  if word.capitalize == word
     capital = true
  end

  if "aeiou".include? word.chr

    word += "way"

  else

    if word[0..1] == "qu"

      word += word[0..1] + "ay"
      word = word[2..-1]

    else

      until "aeiou".include? word.chr
        word += word.chr
        word = word[1..-1]
      end
      word += "ay"

    end

  end

  if capital == true
    word = word.capitalize
  end

word

end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('Dog'), 'Ogday')
assert_equal(pig_latin('cram'), 'amcray')
