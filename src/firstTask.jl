module firstTask

# Global variable
p = (3 - sqrt(5)) / 2

# Golden section method to find local minimum value
function goldenSection(f, a, b, tol=1e-5)
  # Make sure that entered range is correct
  a = min(a, b)
  b = max(a, b)
  # Algorithm starts there
  k = 1
  w1 = a + (1 - p) * (b - a)
  w2 = a + p * (b - a)
  yw1 = f(w1)
  yw2 = f(w2)

  while abs(b - a) >= tol
    println(a, " <-> ", b, ": ", w1, ", ", w2)
    if yw1 > yw2
      # Minimum is located in right section - reassign proper values
      a = w1
      w1 = w2
      yw1 = yw2
      # Calculate other values
      w2 = a + p * (b - a)
      yw2 = f(w2)
    elseif yw1 < yw2
      # Minimum is located in left section - reassign proper values
      b = w2
      w2 = w1
      yw2 = yw1
      # Calculate other values
      w1 = a + (1 - p) * (b - a)
      yw1 = f(w1)
    else
      println("No minimum found...")
    end
    k += 1
  end

  result = round((a + b) / 2)

  println("Final range: (a, b) = (", a, ", ", b, ")")
  println("Approximate result = ", result)
end

export goldenSection

end # module
