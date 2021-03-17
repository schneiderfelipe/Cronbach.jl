using Cronbach
using Documenter

DocMeta.setdocmeta!(Cronbach, :DocTestSetup, :(using Cronbach); recursive=true)

makedocs(;
    modules=[Cronbach],
    authors="Felipe S. S. Schneider <schneider.felipe@posgrad.ufsc.br> and contributors",
    repo="https://github.com/schneiderfelipe/Cronbach.jl/blob/{commit}{path}#{line}",
    sitename="Cronbach.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://schneiderfelipe.github.io/Cronbach.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/schneiderfelipe/Cronbach.jl",
)
