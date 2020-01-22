# def solution(str)
#   str += "_" if str.length.odd?
#   return str.scan(/.{2}/)
# end

def solution(str)
  (str+'_').scan /../
end

p solution('abc') # should return ['ab', 'c_']
p solution('abcdef') # should return ['ab', 'cd', 'ef']
