push!(LOAD_PATH,"./src")
module ReduceModel

# Load essential packages
using PowerModels
using SparseArrays
using LinearAlgebra

# Include essential REI-related files
include("util/types.jl")
include("util/util.jl")
include("util/partition.jl")
include("rei/construct_rei.jl")
include("rei/call_rei.jl")
include("rei/reduce_areas.jl")

using .PartitioningUtils

# Export utility functions for REI model
export call_rei
export REIOptions
export partition

end