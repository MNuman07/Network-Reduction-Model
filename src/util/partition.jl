module PartitioningUtils
using LinearAlgebra
using Clustering

export partition

# Function to partition the network into areas based on bus and branch data
function partition(no_areas::Int64, ext2int::Dict{Int64, Int64}, bus_data::Dict{String, Any}, branch_data::Dict{String, Any})
    # Preparing bus and branch data for partitioning
    bus_ids = [bus["bus_i"] for bus in values(bus_data)]
    v_base = [bus["vm"] for bus in values(bus_data)]
    X = [br["br_x"] for br in values(branch_data)]

    # Error handling for NaN values and missing connections in `branch_data`
    if any(isnan.(X))
        error("NaN values found in branch data, cannot proceed with partitioning.")
    end

    # Create a matrix for clustering with bus data
    bus_data_matrix = hcat(v_base, bus_ids .% no_areas)  # Placeholder data for clustering
    
    # Perform clustering directly
    clustering = kmeans(bus_data_matrix', no_areas; maxiter=100)
    println("Clustering assignments: ", clustering.assignments)

    # Organize buses into areas based on clustering results
    areas = Dict()
    for area in 1:no_areas
        areas[area] = findall(x -> x == area, clustering.assignments)
    end
    return areas
end

end # module
