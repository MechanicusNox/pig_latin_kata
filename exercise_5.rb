# Develop your work so far to handle sentences
# e.g. "The quick fox jumped over the lazy dog" ->
#      "Ethay ickquay oxfay umpedjay overway ethay azylay ogday"

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

def pig_latin_sentence(sentence)
  split_sentence = sentence.split
  split_sentence = split_sentence.map {|word| pig_latin(word)}
  split_sentence.join(" ")
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(
  pig_latin_sentence('The quick fox jumped over the lazy dog'),
  'Ethay ickquay oxfay umpedjay overway ethay azylay ogday'
)
