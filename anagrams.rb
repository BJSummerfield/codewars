def anagrams(word, words)
  reference = word.chars.sort
  words.select { |w| w.chars.sort == reference }
end