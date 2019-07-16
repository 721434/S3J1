def is_a_vowel(char)
  return char.downcase.delete("aeiouy") == ""
end

def translate(str)

  
  ret_str = []
  str.split(" ").each do |word|

    if word[0] == "q" && word[1] == "u" #si commence par qu
      if !is_a_vowel(word[2]) #si une consomne suit qu
        ret_str << word[2..-1]+ "qu"+word[2]+ "ay"
      else #si une voyelle suit qu
        ret_str << word[2..-1]+ "quay" 
      end
    elsif !is_a_vowel(word[0]) && word[1]=="q" && word[2]=="u" #si commence par consonne puis qu
      ret_str<< word[3..-1]+word[0]+"quay"
    elsif is_a_vowel(word[0])#si commence par consonne
      ret_str << word+"ay"
    elsif !is_a_vowel(word[0]) && is_a_vowel(word[1])#si consomne puis voyelle
      ret_str << word[1..-1]+ word[0]+ "ay"
    elsif !is_a_vowel(word[0]) && !is_a_vowel(word[1]) && is_a_vowel(word[2])#si deux consomne puis voyele
      ret_str << word[2..-1]+ word[0] + word[1]+ "ay"
    elsif !is_a_vowel(word[0]) && !is_a_vowel(word[1]) && !is_a_vowel(word[2])#si trois consomnes
      ret_str << word[3..-1]+ word[0] + word[1]+word[2]+ "ay"
    end
  end
  return ret_str.join(" ") 

end

