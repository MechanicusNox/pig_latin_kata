# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
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
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
