#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num=2)
  ([string]*num).join(" ")
end

def start_of_word(string, index)
  string[0...index]
end

def first_word(string)
  arr = string.split(" ")
  arr[0]
end

def titleize(string)
  arr = string.split(" ")
  arr.each do |word|
    if word == arr[0]
      word.capitalize!
    elsif word != 'and' && word != 'the' && word != 'of' && word != 'over' && word != 'or' && word != 'to' && word != 'in'
      word.capitalize!
    else
      word
    end
  end
  arr.join(" ")
end
