# Network-Reduction-Model

This repository provides a Radial Equivalent Independent (REI) method for power network reduction. The REI method simplifies large-scale power systems into smaller, computationally efficient models while retaining key system characteristics.

The model uses the PowerModels.jl package for power network analysis and integrates partitioning and reduction techniques to simplify the network. The main script use_rei.jl demonstrates the reduction process and provides numerical comparison between the original and reduced networks.

## Repository Structure
The repository is organized into the following structure:
```
Network_Reduction/
│ 
├── src/                        Main source code folder
│ ├── reduce_model.jl           Core module for the REI reduction
│ ├── rei/                      REI specific reduction methods
│ │ ├── call_rei.jl             Entry point for REI reduction
│ │ ├── construct_rei.jl        REI construction Logic
│ │ └── reduce_areas.jl         Area-wise network reduction
│ ├── util/                     Utilities for network management
│ │ ├── partition.jl            Network partitioning management
│ │ ├── types.jl                Custom data types
│ │ └── util.jl                 General utility functions
│ ├── examples/                 Example use cases
│ ├── cases/                    MATPOWER input files
│ │ └── case6.m                 Example input files
│ │ └── case39.m                Example input files
│ │ └── case118.m               Example input files
│ └── use_rei.jl                Example script to run the REI reduction
│ └── README.md                 Documentation and instructions
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

