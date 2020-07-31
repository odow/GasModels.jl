# Define LP implementations of Gas Models

######################################################################################################
## Constraints
######################################################################################################

"Constraint: Weymouth equation--not applicable for LP models"
function constraint_pipe_weymouth(gm::AbstractLPModel, n::Int, k, i, j, f_min, f_max, w, pd_min, pd_max)
    #TODO we could think about putting a polyhendra around the weymouth
end


"Constraint: Weymouth equation--not applicable for LP models"
function constraint_resistor_weymouth(gm::AbstractLPModel, n::Int, k, i, j, f_min, f_max, w, pd_min, pd_max)
    #TODO we could think about putting a polyhendra around the weymouth
end


"Constraint: Constraint on pressure drop across a short pipe--not applicable for LP models"
function constraint_short_pipe_pressure(gm::AbstractLPModel, n::Int, k, i, j)
end


"Constraint: Compressor ratio constraints on pressure differentials--not applicable for LP models"
function constraint_compressor_ratios(gm::AbstractLPModel, n::Int, k, i, j, min_ratio, max_ratio, i_pmin, i_pmax, j_pmin, j_pmax, type)
end


"Constraint: Constraints on pressure drop across valves where the valve can open or close--not applicable for LP models"
function constraint_on_off_valve_pressure(gm::AbstractLPModel, n::Int, k, i, j, i_pmax, j_pmax)
end


"constraints on pressure drop across control valves--not applicable for LP models"
function constraint_on_off_regulator_pressure(gm::AbstractLPModel, n::Int, k, i, j, min_ratio, max_ratio, f_min, i_pmin, i_pmax, j_pmin, j_pmax)
end


"Constraint: Weymouth equation--not applicable for MIP models--not applicable for LP models"
function constraint_pipe_weymouth_ne(gm::AbstractLPModel,  n::Int, k, i, j, w, f_min, f_max, pd_min, pd_max)
end


"Constraint: compressor ratios on a new compressor--not applicable for MIP models-not applicable for LP models"
function constraint_compressor_ratios_ne(gm::AbstractLPModel, n::Int, k, i, j, min_ratio, max_ratio, i_pmin, i_pmax, j_pmin, j_pmax, type)
end


"Constraint: Constraints which define pressure drop across a pipe"
function constraint_pipe_pressure(gm::AbstractLPModel, n::Int, k, i, j, pd_min, pd_max)
end


"Constraint: Constraints which define pressure drop across a resistor"
function constraint_resistor_pressure(gm::AbstractLPModel, n::Int, k, i, j, pd_min, pd_max)
end


"Constraint: constraints on pressure drop across an expansion pipe"
function constraint_pipe_pressure_ne(gm::AbstractLPModel, n::Int, k, i, j, pd_min_on, pd_max_on, pd_min_off, pd_max_off)
end


"Constraint: constrains the ratio to be ``p_i \\cdot \\alpha = p_j``"
function constraint_compressor_ratio_value(gm::AbstractLPModel, n::Int, k, i, j)
end


"Constraint: constrains the energy of the compressor"
function constraint_compressor_energy(gm::AbstractLPModel, n::Int, k, power_max, work)
end
