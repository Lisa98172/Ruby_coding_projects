def caesar_cipher(string, shift_factor)
array=string.split("")
array.map! do |n|
  p array
  n=n.ord-4
  if n.between?(97,122) 
    n
  elsif n<97
    n+26
  elsif n>122
    n-26
  else
    puts "error"
  end
end
p array
array.map! {|n| n.chr}
p array
end

# Only works for lowercase letters
# Code below would work for uppercase letters as it creates a key using the shiftkey which is then used to obtain characters from
def caesar_cipher(string, shift = 1)
    alphabet  = Array('a'..'z')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
    
    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
    
    encrypter = non_caps.merge(caps)
    
    string.chars.map { |c| encrypter.fetch(c, c) }
  end
  
  p caesar_cipher("testingzZ1Z").join