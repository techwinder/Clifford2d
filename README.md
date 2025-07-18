# Clifford2d

![image info](./meta/res/attr2d_a-1.7_b1.7_c-2.5_d0.7.png)

An implementation of the Clifford attractor using the Qt libraries

# Description
## The Clifford attractor

$$x_{n+1} = \sin(a \cdot y_n) + c \cdot \cos(a \cdot x_n)$$<br>
$$y_{n+1} = \sin(b \cdot x_n) + d \cdot \cos(b \cdot y_n)$$

# Usage
![image info](./meta/res/interface.png)

- Time out: this defines how long the attractor will run

- a, b c, d: the parameters of the Clifford attractor

  Suggested sets:<br>
    `a=-1.70, b= 1.70, c=-2.50, d= 0.70`<br>
    `a=-1.70, b= 1.80, c=-1.90, d= 0.40`<br>
    `a= 0.70, b= 1.30, c=-1.40, d= 1.15`<br>
    `a= 2.70, b=-1.15, c= 1.75, d= 0.75`<br>
    `a= 1.45, b=-1.35, c= 2.30, d= 1.10`<br>
    `a= 1.77, b= 1.70, c= 1.20, d= 0.67`<br>
    `a=-1.40, b= 1.60, c= 1.00, d= 0.70`<br>
    `a=-1.40, b= 1.60, c= 2.00, d=-0.67`<br>
    `a=-2.00, b=-1.33, c= 0.95, d= 0.45`

- Clear: Remove the occupancy history. Typically used when starting the attractor with a new set of parameters.

- Start/Continue: run the attractor.

- Image size: Defines the occupancy matrix and the underlying default size of the image.

- Max. occupancy: The ceiling value for occupancy. This is used to limit the difference bewtween max. and min. (i.e. 0) occupancies so as to limit the squashing of colors.

- Save: save the picture to the user's default 'Pictures' or 'Images' directory defined in the OS.



# Compilation
## Linux
- Use your distribution's pacakge manager to  install the Qt6***.dev libraries
- `qmake`
- `make`
- `sudo make install`
-  `Clifford2d` to run

## Windows and Mac
- Install the Qt6 development libraries from the Qt site
- Compile and run in release mode
