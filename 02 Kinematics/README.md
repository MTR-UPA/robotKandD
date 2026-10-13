## Robot Kinematics

This section studies the kinematics of a robotic manipulator, focusing on the relationship between joint variables and the pose of the end-effector. In robotics, kinematics is divided into two main problems:

<img src="img/Kinematics%20Schema.png" alt="Kinematics Schema" width="500">


- Forward kinematics: given the joint variables, determine the position and orientation of the robot end-effector.
- Inverse kinematics: given a desired end-effector pose, determine the joint variables required to achieve it.

### 1. Forward Kinematics

The direct kinematic problem consists of computing the homogeneous transformation matrix that maps the robot base frame to the end-effector frame as a function of the joint variables.

For a serial robot with n joints, the pose is obtained as a product of transformations:

$$T = ^0T_1 * ^1T_2 ... ^{n-1}T_n$$

where each T(i-1),i is a homogeneous transformation matrix defined by the Denavit-Hartenberg (DH) parameters.

For conventional DH parameters, each link is described by:

- θi: Rotation over Z axis an angle theta (joint angle)
- di: Translation over Z axis a distance d (link offset)
- ai: Translation over X axis a distance a (link length)
- αi: Rotation over X axis an angle alpha (link twist)

That is why, by successively multiplying the DH steps, we obtain:

$$
^{i-1}T_{i} =
\begin{bmatrix}
\cos(\theta_i) & -\sin(\theta_i) & 0 & 0 \\
\sin(\theta_i) & \cos(\theta_i) & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{bmatrix}\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & d_i \\
0 & 0 & 0 & 1
\end{bmatrix}\begin{bmatrix}
1 & 0 & 0 & a_i \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{bmatrix}\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & \cos(\alpha_i) & -\sin(\alpha_i) & 0 \\
0 & \sin(\alpha_i) & \cos(\alpha_i) & 0 \\
0 & 0 & 0 & 1
\end{bmatrix}
$$

$$
^{i-1}T_{i} =
\begin{bmatrix}
\cos(\theta_i) & -\sin(\theta_i)\cos(\alpha_i) & \sin(\theta_i)\sin(\alpha_i) & a_i \cos(\theta_i) \\
\sin(\theta_i) & \cos(\theta_i)\cos(\alpha_i) & -\cos(\theta_i)\sin(\alpha_i) & a_i \sin(\theta_i) \\
0 & \sin(\alpha_i) & \cos(\alpha_i) & d_i \\
0 & 0 & 0 & 1
\end{bmatrix}
$$

*Fig. 1. Conventional DH transformation matrix.*

This allows us to compute the position and orientation of the tool with respect to the robot base.

The function [transformA.m](transformA.m) implements this homogeneous transformation for a single robot link using the Denavit-Hartenberg parameters. It receives a vector in the form [theta, d, a, alpha], computes the corresponding sine and cosine terms, and returns the 4x4 matrix that describes the relative pose between two consecutive frames. This matrix is the basic building block used to assemble the full kinematic chain of a manipulator, where multiple link transforms are multiplied sequentially to obtain the end-effector pose.

### 2. Inverse Kinematics

The inverse kinematic problem is the opposite: given a desired pose of the end-effector, find the joint values q1, q2, ..., qn that satisfy the target position and orientation.

In mathematical terms, we seek q such that:

T_desired = T(q)

This problem is generally more difficult than the forward kinematics problem because:

- the solution may not exist for the desired pose,
- it may have multiple valid solutions,
- it may require numerical methods if the robot is highly nonlinear.

For many manipulators, the inverse kinematics solution is obtained by decomposing the pose into geometric subproblems and solving analytically for each joint.

### 3. Conventional DH Table

Here we will work with the conventional DH parameters, following the structure below:

| Link | θ [°] | d [mm] | a [mm] | α [°] |
|------|-------|--------|--------|--------|
| 1    | q₁    | d₁     | a₁     | α₁     |
| 2    | q₂    | d₂     | a₂     | α₂     |
| 3    | q₃    | d₃     | a₃     | α₃     |
| 4    | q₄    | d₄     | a₄     | α₄     |
| 5    | q₅    | d₅     | a₅     | α₅     |
| 6    | q₆    | d₆     | a₆     | α₆     |

### 4. Why this matters

The kinematic model is essential for:

- trajectory planning,
- robot control,
- simulation and visualization,
- task execution in industrial and research applications.

A correct forward kinematic model allows us to predict the robot motion from joint values, while a correct inverse kinematic model allows us to command the robot to reach a desired point in space.

### 5. Summary

The direct kinematic problem answers: "If I know the joint variables, where is the end-effector?"

The inverse kinematic problem answers: "If I know the desired end-effector pose, what joint variables are needed?"

Both are fundamental in robot mechanics and are the basis for motion planning and control.

