def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, n=2)
  return  ((str+" ")*n).chop
end

def start_of_word(str, n)
  return str[0..n-1]
end

def first_word(str)
  return (str.split(" "))[0]
end

def titleize(str)
  #tout en minuscule
  #puis on split en case quand espace
  #pour chaque case (map)
  #si le mot n'est pas égal à and ou the ou si c'est le ptrmier
  #On met la premiere lettre en capitale
  #sinon (and ou the)
  #on met en minuscule
  #on relie tout ça en mettant des espaces
  return str.downcase.split(" ").map.with_index{|word,i| (word != "and" && word !="the") || i==0 ? word.capitalize : word.downcase}.join(" ")
end