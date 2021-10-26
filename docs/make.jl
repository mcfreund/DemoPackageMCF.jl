using DemoPackageMCF
using Documenter

DocMeta.setdocmeta!(DemoPackageMCF, :DocTestSetup, :(using DemoPackageMCF); recursive=true)

makedocs(;
    modules=[DemoPackageMCF],
    authors="mike freund <m.freund@wustl.edu> and contributors",
    repo="https://github.com/mcfreund/DemoPackageMCF.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageMCF.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mcfreund.github.io/DemoPackageMCF.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mcfreund/DemoPackageMCF.jl",
    devbranch="main",
)
