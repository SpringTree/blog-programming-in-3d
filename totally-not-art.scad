use <cube_frame.scad>;

cubeSize = 10;

// Balance the cube on its corner and then
// add a rotated variant at 180 degrees
//
for(i = [0 : 180 : 360]) {
    rotate([45, -35, i]) {
        cube_frame(cubeSize, cubeSize, cubeSize, 1);
    }
}

// Add more steps to create a more complex structure
//
translate([20, 0, 0]) {
    for(i = [0 : 90 : 360]) {
        rotate([45, -35, i]) {
            cube_frame(cubeSize, cubeSize, cubeSize, 1);
        }
    }
}

// Many more steps to create a nearly closed structure
//
translate([40, 0, 0]) {
    for(i = [0 : 5 : 360]) {
        rotate([45, -35, i]) {
            cube_frame(cubeSize, cubeSize, cubeSize, 1);
        }
    }
}
