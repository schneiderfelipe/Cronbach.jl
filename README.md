# Cronbach.jl

[![DOI](https://zenodo.org/badge/348867197.svg)](https://zenodo.org/badge/latestdoi/348867197)
[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://schneiderfelipe.github.io/Cronbach.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://schneiderfelipe.github.io/Cronbach.jl/dev)
[![Build Status](https://github.com/schneiderfelipe/Cronbach.jl/workflows/CI/badge.svg)](https://github.com/schneiderfelipe/Cronbach.jl/actions)
[![Coverage](https://codecov.io/gh/schneiderfelipe/Cronbach.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/schneiderfelipe/Cronbach.jl)

[Cronbach's alpha](https://en.wikipedia.org/wiki/Cronbach%27s_alpha) in Julia.

```julia
julia> using Cronbach

julia> C = [10  6  6  6;  # fictitious data
             6 11  6  6;
             6  6 12  6;
             6  6  6 13];

julia> cronbach(C)
0.8135593220338984
```

## Citing Cronbach.jl

If you use Cronbach.jl in your research, please cite it.
