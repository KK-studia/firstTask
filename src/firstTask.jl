module firstTask

# Global variable
goldenRatio = (1 + sqrt(5)) / 2

# Golden section method to find local minimum value
function goldenSection(f, a, b, tol = 1e-8)
  # Make sure that entered range is correct
  a = min(a, b)
  b = max(a, b)

  while abs(a - b) >= tol
    # Calculate next 2 points
    x1 = b - (b - a) / goldenRatio
    x2 = a + (b - a) / goldenRatio
    # Compare function values from calculated points and determine where minimum is located
    if f(x1) < f(x2)
      b = x2
    else
      a = x1
    end
  end
  # Get the approximate value and return it
  result = (a + b) / 2
  return result
end

export goldenSection

end # module
