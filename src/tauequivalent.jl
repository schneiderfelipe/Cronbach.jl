@doc raw"""
    cronbach(Σ::AbstractMatrix)

Calculate [Cronbach's alpha](https://en.wikipedia.org/wiki/Cronbach%27s_alpha).
This is also known as tau-equivalent reliability (``\rho_T``).
`Σ` is a covariance matrix (which means it must be square).

# Examples
```jldoctest
julia> C = [10  6  6  6;  # fictitious data
             6 11  6  6;
             6  6 12  6;
             6  6  6 13];

julia> cronbach(C)
0.8135593220338984
```
"""
function cronbach(Σ::AbstractMatrix)
	k, m = size(Σ)
    k == m || throw(DimensionMismatch("dimensions must match"))

    σᵢⱼ = zero(eltype(Σ))
    @inbounds for i in 2:k, j in 1:i-1
        σᵢⱼ += Σ[i, j]
    end
    σₓ² = 2σᵢⱼ + sum(diag(Σ))
    σᵢⱼ /= (k - 1) * k / 2

    return k^2 * σᵢⱼ / σₓ²
end