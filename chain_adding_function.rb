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

