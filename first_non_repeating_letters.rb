# https://www.codewars.com/kata/52bc74d4ac05d0945d00054e

def  first_non_repeating_letter(s)
  s.gsub(" ","").split("").each do |character|
    return character if s.downcase.count(character.downcase) == 1
  end
  return ""
end



