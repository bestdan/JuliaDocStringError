push!(LOAD_PATH, "../src/")
using Documenter, JuliaDocStringError

rm("docs/build/", recursive=true)

DocMeta.setdocmeta!(JuliaDocStringError, :DocTestSetup, :(using JuliaDocStringError); recursive=true)

makedocs(
  sitename="JuliaDocStringError",
  modules=[JuliaDocStringError], 
  doctest = true)
