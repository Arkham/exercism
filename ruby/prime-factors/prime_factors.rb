class PrimeFactors
  class << self
    def for(number)
      lowest_factor = (2..number).detect do |n|
        number % n == 0
      end

      lowest_factor ? [lowest_factor] + PrimeFactors.for(number / lowest_factor) : []
    end
  end
end
