

<h1 align="center">Homogeneus Transform Matrix</h1>

To determine the location of an object within a reference frame, it is essential to know both its position and orientation within that frame. To achieve this, a homogeneous transformation matrix is required, as it provides all the necessary information to locate any object within another reference frame.

A homogeneous transformation matrix is composed of four elements: a rotation matrix (orientation), a position vector (translation), a perspective vector, and a scaling factor.

## Orientation

The orientation is represented by a rotation matrix SO3 la cual puede 

The orientation within a homogeneous transformation matrix is represented by an orthonormal rotation matrix belonging to the special orthogonal group in three dimensions, denoted as SO(3). This matrix provides the necessary information to describe the relative orientation between two three-dimensional reference frames. Mathematically, it can be interpreted as the result of a successive composition of elementary rotations about the coordinate axes. These rotations can follow different conventions, such as ZYZ, ZXZ, or XYZ, with the latter—XYZ sequence—being the most commonly used in robotics and computer vision applications due to its simplicity and the geometric clarity it offers when describing spatial transformations in Cartesian coordinate systems.

### XYZ Rotation (Yaw, Pitch, Roll)

