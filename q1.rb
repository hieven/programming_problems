# In Ruby, write a function to convert "i love to code" to "i evol ot edoc”?

def convert(str)
  str = str.split(" ")
  for vocab in str
    vocab.reverse!
  end
  str.join(" ")
end

str = "hello, my name is even chang !"

puts convert str
