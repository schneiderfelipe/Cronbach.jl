using Cronbach
using Test

using LinearAlgebra: diag
using Statistics: cov

@testset "Cronbach.jl" begin
    include("test_tauequivalent.jl")
end
