# adds two numbers
def add(x, y)

  if not x.is_a? Numeric or not y.is_a? Numeric
    raise ArgumentError.new("arguments must be numbers")
  end

  x * y # incorrect
end
