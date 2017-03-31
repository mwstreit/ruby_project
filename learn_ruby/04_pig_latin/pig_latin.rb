#write your code here

def one_word(word)
  length = word.length
  letters = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = letters - vowels
  if vowels.include?(word[0])
    word + 'ay'
  else
    if word[0..1] == 'qu'
      word[2..length] + 'quay'
    elsif word[0..2] == 'squ'
      word[3..length] + 'squay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..length]  + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..length]  + word[0..1] + 'ay'
    else
      word = word[1...length] + word[0] + 'ay'
    end
  end
end

def multi_words(string)
  arr = string.split(" ")
  translated = arr.map {|word| one_word(word)}
  translated_sent = translated.join(" ")

end


def translate(string)
  if string.include?(" ")
    multi_words(string)
  else
    one_word(string)
  end
end
