# Network-Reduction-Model
REI-Based Power Network Reduction Model
This repository provides a Radial Equivalent Independent (REI) method for power network reduction. The REI method simplifies large-scale power systems into smaller, computationally efficient models while retaining key system characteristics.

The model uses the PowerModels.jl package for power network analysis and integrates partitioning and reduction techniques to simplify the network. The main script use_rei.jl demonstrates the reduction process and provides numerical comparison between the original and reduced networks.

## Repository Structure
The repository is organized into the following structure:
```
Network_Reduction/
│ 
├── src/
│ ├── reduce_model.jl
│ ├── rei/
│ │ ├── call_rei.jl
│ │ ├── construct_rei.jl
│ │ └── reduce_areas.jl
│ ├── util/
│ │ ├── partition.jl
│ │ ├── types.jl
│ │ └── util.jl
│ ├── examples/
│ ├── cases/
│ │ └── case39.m
│ └── use_rei.jl
│ └── README.md
```
## Model Overview
+ Implements the REI Method for power network reduction.
+ Uses PowerModels.jl to handle network data and optimization.
+ Partitions the power network into zones and reduces it to an equivalent smaller model.
+ Provides tools to:
+ Run Optimal Power Flow (OPF) for both original and reduced networks.
+ Implements the REI Method for power network reduction.
+ Uses PowerModels.jl to handle network data and optimization.
+ Partitions the power network into zones and reduces it to an equivalent smaller model.

## Required Packages
Before running the model, ensure the following Julia packages are installed:

+ **PowerModels.jl:** Power system optimization and analysis
+ **Ipopt.jl:** Non-linear optimisation solver for OPF
+ **LinearAlgebra.jl:** 
+ **SparseArrays.jl:** Enables efficient representation and manipulation of sparse matrices, which are critical for modeling large-scale power system networks with sparsely connected nodes.

