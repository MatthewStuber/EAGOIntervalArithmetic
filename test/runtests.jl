using EAGOIntervalArithmetic

# write your own tests here
println("Testing Arithmetic...")
t = @elapsed include("arithmetic_test.jl")
println("done (took $t seconds).")
