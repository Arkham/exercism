class Integer
  def factors
    limit = self / 2

    (2..limit).each_with_object([]) do |n, result|
      if self % n == 0
        result << n
        result += (self / n).factors
      end
    end + [ self ]
  end
end

p 1.factors
p 2.factors
p 3.factors
p 4.factors
p 5.factors
p 6.factors
