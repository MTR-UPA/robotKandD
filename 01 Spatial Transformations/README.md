# SPATIAL TRANSFORMATIONS

## Frameworks

In robotics, a **reference frame** (or **coordinate system**) is a set of axes (typically **X**, **Y**, and **Z**) used to define the position and orientation of an object or a set of objects in three-dimensional space. It is essential for describing the movement and interactions of a robot, as it provides a context for measuring the coordinates of points, vectors, and transformations. Two of the most common coordinate systems are **right-handed** and **left-handed**, which mainly differ in the orientation of their axes. These terms come from the **right-hand** and **left-hand** rules, respectively, which define the direction of the axes in a three-dimensional system.
<div align="center">
<img src="../Images/00_Spatial.png" width="500"/><br \>
<small>Dextrorotative and Levorotative Systems</small>
</div>

## Dextrorotative System
A **right-handed coordinate system** follows the right-hand rule, in which the axes are arranged such that if you point the thumb, index, and middle fingers of your right hand, the three axes (X, Y, Z) will align with the fingers. This system is widely used in robotics, mathematics, and physics applications. 
We consider three unit vectors, **i**, **j**, and **k**, which represent the X, Y, and Z axes, respectively.

The relationship between these vectors is described using the cross product to ensure that the axes follow the correct orientation:

The vector **k** (Z axis) is defined as the cross product of **i** and **j**:

$$\large \mathbf{k} = \mathbf{i} \times \mathbf{j}$$

In general, this cross product ensures that the three vectors are perpendicular to each other and respect the right-hand rule orientation.

## Levorotative System
On the other hand, a **left-handed coordinate system** follows the left-hand rule, where the axes are oriented in the opposite direction. Although less common than the right-handed system, the left-handed system is used in some applications, such as certain 3D graphics systems and specific simulation models.

We consider three unit vectors, i, j, and k, which represent the X, Y, and Z axes, respectively.

In a left-handed coordinate system, the orientation of the axes is such that the Z axis points in the opposite direction compared to a right-handed system. The vector k is defined as the cross product of j and i (note the reversed order):

$$\large \mathbf{k} = \mathbf{j} \times \mathbf{i}$$

This reversed cross product ensures that the three vectors are mutually perpendicular and follow the left-hand rule orientation, where the thumb, index, and middle fingers of the left hand point in the directions of the X, Y, and Z axes, respectively.

These coordinate systems are crucial for defining and controlling the orientation and movement of robots, and the choice between a right-handed or left-handed system can have a significant impact on the design and programming of robotic algorithms.