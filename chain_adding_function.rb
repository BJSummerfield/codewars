# https://www.codewars.com/kata/539a0e4d85e3425cb0000a88

module Chain
  refine Integer do
    def call(n)
      self + n
    end
  end
end

def add(n)
  n
end

using Chain
