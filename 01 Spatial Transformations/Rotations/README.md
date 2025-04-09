# SPATIAL TRANSFORMATIONS

## Rotation Matrix

In geometry and robotics, a **3D rotation matrix** is a **3×3 orthogonal matrix** used to **rotate vectors or coordinate systems** in three-dimensional space without changing their magnitude—only their orientation.


### 🔧 **Technical Definition:**

A **3D rotation matrix** \( R \) satisfies the following properties:

- $\large R \in \mathbb{R}^{3 \times 3}$
- $\large R^T R = I$
- $\large \det(R) = 1$ 

---

### 📐 **Rotations around the principal axes:**

#### 1. Rotation about the **X-axis**:

<div align="center">
<img src="../Images/Spatial/01_Spatial.png" width="300"/><br \>
</div>


The following image illustrates the result of rotating a reference frame by 30 degrees about the X-axis, along with the corresponding rotation matrix. Note that the direction of rotation follows the right-hand rule.

<div align="center">
<img src="../Images/Spatial/02_Spatial.png" width="500"/><br \>
<small>X rotation by 30 degrees</small>
</div>

To generate the image above, you can run the `XRotation` script. I encourage you to modify the rotation angle and observe how the reference frame and its corresponding rotation matrix change.

#### 2. Rotation about the **Y-axis**:

<div align="center">
<img src="../Images/Spatial/03_Spatial.png" width="300"/><br \>
</div>


The following image illustrates the result of rotating a reference frame by 30 degrees about the Y-axis, along with the corresponding rotation matrix. Note that the direction of rotation follows the right-hand rule.

<div align="center">
<img src="../Images/Spatial/04_Spatial.png" width="500"/><br \>
<small>Y rotation by 30 degrees</small>
</div>

To generate the image above, you can run the `YRotation` script. I encourage you to modify the rotation angle and observe how the reference frame and its corresponding rotation matrix change.

#### 3. Rotation about the **Z-axis**:

<div align="center">
<img src="../Images/Spatial/05_Spatial.png" width="300"/><br \>
</div>


The following image illustrates the result of rotating a reference frame by 30 degrees about the Z-axis, along with the corresponding rotation matrix. Note that the direction of rotation follows the right-hand rule.

<div align="center">
<img src="../Images/Spatial/06_Spatial.png" width="500"/><br \>
<small>Z rotation by 30 degrees</small>
</div>

To generate the image above, you can run the `ZRotation` script. I encourage you to modify the rotation angle and observe how the reference frame and its corresponding rotation matrix change.



---

### 📦 **What is it used for?**

- Transforming vectors from one coordinate system to another.
- Describing the orientation of a rigid body in space.
- In robotics, to define the **orientation of links** or the end-effector.
- In 3D graphics, to rotate models and cameras.
