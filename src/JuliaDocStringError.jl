module JuliaDocStringError

export 
    AbstractDebt, Thing

searchdir(path, key) = filter(x -> occursin(key, x), readdir(path))
source_files = unique(searchdir("src/", ".jl"))
source_files = source_files[(source_files.=="JuliaDocStringError.jl").==0]
map(this_file -> include(joinpath(this_file)), source_files)


end
