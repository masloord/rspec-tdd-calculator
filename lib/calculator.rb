class Calculator
  attr_accessor:result
  def initialize(number)
    @result = number
  end

  def add(x)
    @result += x if x.is_a?Numeric
    self
  end

  def reset(x)
    @result = x if x.is_a?Numeric
    self
    end

  def subtract(x)
    @result -= x if x.is_a?Numeric
    self
    end

  def multiply(x)
    @result *= x if x.is_a?Numeric
    self
    end

  def divide(x)
    @result /= x if x.is_a?Numeric
    self
    end
end
