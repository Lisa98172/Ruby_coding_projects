def substrings(strings, dictionary)
    hash={}
    p array=strings.downcase.split(" ")
    array.each do |n|
      count=dictionary.map {|x| x.downcase}.count(n)
      unless count==0
        hash[n]=count
      end
    end
    p hash
  end
  
  
  
  
  
  dictionary = ["below","down","Go","going","Horn","how","howdy","it","i","low","own","part","partner","sit"]
  substrings("go where you wish It", dictionary)