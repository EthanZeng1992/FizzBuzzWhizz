class Nums
  class << self
    def is_times(i, n, s) 
      return (i % n == 0) ? s : '' 
    end

    def is_valid?(nums)
      str = nums.split(',').join
      match1 = nums.match(/^[1-9]\,[1-9]\,[1-9]$/)
      match2 = str.match(/^(?!0)(?:([1-9])(?!.*\1))+$/)
      return match1 && match2
    end
  end
end
