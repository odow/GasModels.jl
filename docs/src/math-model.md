# The GasModels Mathematical Model

As GasModels implements a variety of gas network optimization problems, the implementation is the best reference for precise mathematical formulations.  This section provides a mathematical specification for a prototypical Gas Flow problem, to provide an overview of the typical mathematical models in GasModels.


## Gas Flow

GasModels implements a steady-state model of gas flow based on the Weymouth formulation that uses the 1-D hydrodynamic equations for natural gas flow in a pipe. Starting with the quasi-steady hydrodynamic equations and reducing them to a steady state model, the momentum conservation equation in a pipe is stated as


```math
p \frac{\partial p}{\partial x} = -\frac{\lambda a^2 \phi |\phi|}{2 D}
```


where $p$ is pressure, $\lambda$ is a non dimensional friction factor, $\phi$ is mass flux, and $D$ is the diameter of the pipe. Here, $a^2=\frac{ZRT}{m}$ where $Z$ is the gas compressibility factor, $R$ is the universal gas constant, $m$ is the molar mass of the gas, and $T$ is the gas temperature. In steady state, the flow along the pipe (in absence of injections) is constant, i.e.,

```math
    \frac{\partial \phi}{\partial x}=0, 
```

where we have assumed the pipe area does not changing with $x$.  Integrating these equations from the start of the pipe at $x=0$ to the end of the pipe at $x=L$, where $L$ is the length of the pipe, the equation for flux across the pipe is stated as

```math
    p^2(L)-p^2(0) = \frac{-\lambda L a^2 \phi |\phi|}{ 2 D }. 
```

We typically express the mass flux through the pipe in terms of mass flow, $f$, where $f=\phi A$. $A=\frac{\pi D^2}{4}$ is the cross-sectional area of the pipe. Thus, the equation for mass flow through the pipe is stated as 

```math
    p^2(L)-p^2(0) = \frac{-\lambda L a^2 f |f|}{ 2 D A^2}. 
```

Given potential numerical issues associated with these equations, it is very useful to non-dimensionalize the units. Here we use a  typical density $p_0$ and a typical mass {\it flow} $f_0$ and normalize the equations. This yields

```math
    \tilde{p}^2(L)-\tilde{p}^2(0) = -\tilde{f} |\tilde{f}| \left(\frac{\lambda L }{2 D}\right) \left(\frac{f_0^2a^2}{A^2p_0^2}\right),
```

where $\tilde{f}=\frac{f}{f_0}$ and $\tilde{p}=\frac{p}{p_0}$ are the dimensionless mass flow and pressure, respectively, and are both of order one. Note that both terms in parenthesis on the right hand side of this equation are dimensionless.  For the purposes of convenience, we define _resistance_, $w$, as the constant 

```math
w=\left(\frac{\lambda L }{2 D}\right) \left(\frac{f_0^2a^2}{A^2p_0^2}\right).
```  

Finally, in most data sets, nodal injections and withdrawals are defined in terms of volumetric flow, $q$, at a STP conditions. Given this data, we non-dimensionalize based on $q$. At STP conditions, the mass flux is derived as $\phi=\frac{q}{\rho_s}$, where  $\rho_s$ is the gas density at STP conditions.


More details of there derivations of these equations are found in Zlotnik, Chertkov, and Backhaus. _Optimal Control of Transient Flow in Natural Gas Networks_. CDC 2015. We note that this reference expresses these equations in terms of density, $\rho$ rather than pressure.  The transformation from density to pressure is simply $\rho=a^2p$.

A complete gas flow mathematical model is the defined by

```math
\begin{aligned}
\text{sets:} \\
& N & \text{junctions} \\
& A^p & \text{pipes}  \\
& A^c & \text{compressors}  \\
& A^v & \text{valves}  \\
& A = A^p \cup A^c \cup A^v & \text{edges }  \\
& P, P_i & \text{producers and producers at junction $i$}   \\
& C, C_i & \text{consumers and consumers at junction $i$}    \\
%
\text{data:} \\
& w_a & \text{resistance factor of pipeline $a$} \\
& fl_j & \text{consumption (mass flux) at consumer $j$} \\
& fg_j & \text{production (mass flux) at producer $j$} \\
& \underline{\alpha}_a=1, \overline{\alpha}_a & \text{(de)compression limits (squared) of edge $a$} \\
& \underline{p}_i \ge 0,\overline{p}_i & \text{limits on pressure squared at node $i$} \\
%
\text{variables:} \\
& p_i & \text{pressure squared at node $i$} \\
& f_a & \text{flux on edge $a$} \\
& \alpha_a & \text{compression ratio on compressor $a$}\\
& v_a & \text{valve status for valve $a$, 1 if valve is open}\\
%
\text{constraints:} \\
& (p_i - p_j) = {w}_{a} |f_{a}|f_{a} &\text{Weymouth equation for pipe $a$} \\
&& \text{connected from junction $i$ to junction $j$}  \\
&\sum\limits_{a=a_{ij}\in A} f_{a} - \sum\limits_{a=a_{ji} \in A} f_{a} = \sum_{j \in P_i} fg_j- \sum_{j \in C_i} fl_j & \text{mass flux balance at junction $i$} \\
& \alpha_a p_i = p_j & \text{compression boost at compressor $a$} \\
&&\text{mass flux balance at junction $i$} \\
& f_a (1-\alpha_a) \le 0& \text{compression ratio is forced to 1} \\
&& \text{when flow is reversed through compressor $a$} \\
&\underline{{p}}_i \leq p_i \leq \overline{p}_i & \text{pressure limits at junction $i$} \\
&\underline{{\alpha}}_a \leq \alpha_a \leq \overline{\alpha}_a & \text{compression limits at compressor $i$} \\
&-v_a M \leq f_a \leq v_a M & \text{on/off operations for valve $a$} \\
&& \text{where $M$ is the maximum flow through the valve} \\
&p_j - v_a \overline{p}_j \leq p_i \leq p_j + v_a \overline{p}_i & \text{links junction pressures of valve $a$} \\
&& \text{connected from junction $i$ to junction $j$}
\end{aligned}
```

most of the optimization models of GasModels are variations of this formulation. In practice, we discretize on flow direction to reduce the non convexities of this model and relax the assumption that the minimum compression ratio is 1




