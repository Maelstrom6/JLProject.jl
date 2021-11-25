using JLProject
using Documenter

DocMeta.setdocmeta!(JLProject, :DocTestSetup, :(using JLProject); recursive=true)

makedocs(;
    modules=[JLProject],
    authors="Chris du Plessis",
    repo="https://github.com/Maelstrom/JLProject.jl/blob/{commit}{path}#{line}",
    sitename="JLProject.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Maelstrom.github.io/JLProject.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Maelstrom/JLProject.jl",
    devbranch="master",
)
