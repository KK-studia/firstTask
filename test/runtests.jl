using firstTask, Test

@testset "goldenSection" begin
  f(x) = x^4 + 3x^3 + x^2 + sin(x)
  a = -10
  b = 10
  tol = 1e-6
  @test goldenSection(f, a, b, tol) == (-1.9712755845857126, -4.915216432826815)

  f(x) = 3(x - 4)^2
  a = 0
  b = 10
  tol = 1e-6
  @test goldenSection(f, a, b, tol) == (4.000000004370129, 5.729408629607859e-17)
end
