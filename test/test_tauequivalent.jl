@testset "implementation.jl" begin
    # https://en.wikipedia.org/wiki/Cronbach's_alpha#Formula_and_calculation
    C₁ = [10  6  6  6;
           6 11  6  6;
           6  6 12  6;
           6  6  6 13]
    C₂ = [10  4  5  7;
           4 11  6  8;
           5  6 12  9;
           7  8  9 13]

    @test cronbach(C₁) ≈ 0.8135 rtol=8e-5
    @test cronbach(C₂) ≈ 0.8387 rtol=2e-5

    # http://www.abepro.org.br/biblioteca/enegep2010_TN_STO_131_840_16412.pdf
    A₃ = [3 2 3 1 1 3 4 4 3 4 4 4 3 4 4 4 3 1;
          2 4 3 4 5 5 5 5 1 3 4 3 4 4 4 3 3 3;
          4 2 3 1 1 3 4 4 4 4 4 4 3 4 4 4 3 1;
          1 1 3 3 1 1 3 1 1 1 1 3 3 3 1 1 3 1;
          2 4 4 4 3 4 4 4 5 4 3 2 4 4 4 3 2 2;
          1 3 3 4 4 4 3 1 1 1 4 4 3 2 4 3 1 3;
          3 4 3 1 3 4 3 3 3 4 3 4 3 4 4 3 1 3]
    C₃ = cov(A₃)

    @test cronbach(C₃) ≈ 0.84 rtol=5e-3
end
