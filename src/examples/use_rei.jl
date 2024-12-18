push!(LOAD_PATH,"./src")

using ReduceModel
using PowerModels
using Ipopt

# Load network data from MATPOWER file
file = joinpath(@__DIR__, "cases/case118.m")

# Parse the network data
original_net = parse_file(file)

# Set options for REI reduction
rei_opt = REIOptions(ACPPowerModel, build_opf, false, false)

# Run REI reduction by passing the MATPOWER file path
reduced_net = call_rei(
    file,  # Pass the MATPOWER file path to call_rei
    3;          # Set number of areas for partitioning
    options = rei_opt,
    optimizer = optimizer_with_attributes(Ipopt.Optimizer, "print_level" => 0),
    export_file = false,
    path = "./examples",
    no_tries = ReduceModel.NO_TRIES,
)
# Visualization code removed
# Run OPF for both original and reduced networks
sol_ori = solve_opf(original_net, ACPPowerModel, Ipopt.Optimizer)
sol_red = solve_opf(reduced_net, ACPPowerModel, Ipopt.Optimizer)

# Function to display only the objective value
function display_objective(solution, label)
    if haskey(solution, "objective")
        println("Objective Value for ", label, ": ", solution["objective"])
    else
        println("Objective Value for ", label, ": Not available")
    end
end

# Display objective values for original and reduced networks

display_objective(sol_ori, "Original Network")
display_objective(sol_red, "Reduced Network")