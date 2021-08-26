"""
    AbstractThing

A Thing. 

# Examples
```jldoctest
julia> thing1 = RealThing("Example", 100.0, 50.0);

julia> thing1.name
"Example"
```
"""
abstract type AbstractThing end

struct RealThing <: AbstractThing
    name::String
    height::Real
    weight::Real
    RealThing(name, height, weight) = new(name, name, height, weight) 
end
