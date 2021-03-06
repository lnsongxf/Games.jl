module Games

# Packages
using Clp
using MathProgBase
using QuantEcon

# Geometry packages
using Polyhedra
getlibraryfor(2, AbstractFloat)

# 0.5 compatibility
import Compat.view

# Type aliases #
typealias PureAction Integer
typealias MixedAction{T<:Real} Vector{T}
typealias Action{T<:Real} Union{PureAction,MixedAction{T}}
typealias PureActionProfile{N,T<:PureAction} NTuple{N, T}
typealias MixedActionProfile{T<:Real,N} NTuple{N,MixedAction{T}}
typealias ActionProfile Union{PureActionProfile,MixedActionProfile}

# package code goes here
include("normal_form_game.jl")
include("pure_nash.jl")
include("repeated_game_util.jl")
include("repeated_game.jl")


export Player, NormalFormGame,  # Types

       # Type aliases
       Action, MixedAction, PureAction, ActionProfile,

       # Normal form game functions
 	   best_response, best_responses, is_best_response, payoff_vector,
       is_nash, pure2mixed, pure_strategy_NE,

       # General functions
       num_players, num_actions, num_opponents,

       # Nash Equilibrium
       pure_nash,

       # Repeated Games
       RepeatedGame, unpack, flow_u_1, flow_u_2, flow_u, best_dev_i,
       best_dev_1, best_dev_2, best_dev_payoff_i, best_dev_payoff_1,
       best_dev_payoff_2, worst_value_i, worst_value_1, worst_value_2,
       worst_values, outerapproximation

end # module
