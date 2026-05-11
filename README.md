# ESTA and EXSTA under an automatic termination criterion with optimality guarantees
State transition algorithm (STA) has been emerging as a novel metaheuristic method for global optimization in recent years. In this version, effcient state transition algorithm under an automatic termination criterion with optimality guarantees is proposed.

---

# State Transition Algorithm (STA)

The State Transition Algorithm (STA) is a metaheuristic optimization method for solving global optimization problems with box constraints, without requiring derivative information.

The optimization problem is formulated as

$$
\min f(x)
$$

subject to

$$
x_{lb} \leq x \leq x_{ub}
$$

In ESTA, four state transformation operators are employed, namely:

* Rotation Transformation
* Translation Transformation
* Expansion Transformation
* Axesion Transformation

---

## Rotation Transformation (RT)

The rotation transformation is defined as

$$
s_{k+1} = s_k + \alpha R_r \frac{u_k}{|u_k|_2}
$$

where:

* $\alpha > 0$ is the rotation factor;
* $R_r \in \mathbb{R}$ is a uniformly distributed random variable over $[-1,1]$;
* $u_k \in \mathbb{R}^n$ is a random vector whose entries are uniformly distributed within $[-1,1]$.

The rotation transformation performs local search within a hypersphere centered at the current state.

---

## Translation Transformation (TT)

The translation transformation is defined as

$$
s_{k+1} = s_k + \beta R_t (s_k - s_{k-1})
$$

where:

* $\beta > 0$ is the translation factor;
* $R_t \in \mathbb{R}$ is a uniformly distributed random variable over $[-1,1]$;
* $s_{k-1}$ is randomly selected from the historical best archive.

The translation transformation performs directional search along promising trajectories.

---

## Expansion Transformation (ET)

The expansion transformation is defined as

$$
s_{k+1} = s_k + \gamma R_e s_k
$$

where:

* $\gamma > 0$ is the expansion factor;
* $R_e \in \mathbb{R}^{n \times n}$ is a random diagonal matrix whose diagonal entries obey the Gaussian distribution.

The expansion transformation enables global exploration in the entire search space.

---

## Axesion Transformation (AT)

The axesion transformation is defined as

$$
s_{k+1} = s_k + \delta R_a s_k
$$

where:

* $\delta > 0$ is the axesion factor;
* $R_a \in \mathbb{R}^{n \times n}$ is a random diagonal matrix whose entries obey the Gaussian distribution, with only one randomly selected diagonal element being nonzero.

The axesion transformation performs single-dimensional search along coordinate axes, thereby enhancing local exploitation capability.

---

## Adaptive Parameter Control

An adaptive parameter control strategy is further introduced to balance global exploration and local exploitation during the optimization process.


The following paper is used:

Zhou X, Yang C, Gui W, et al. Efficient state transition algorithm with guaranteed optimality[J]. IEEE Transactions on Systems, Man, and Cybernetics: Systems, 2026. DOI: 10.1109/TSMC.2026.3688256
