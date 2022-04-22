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

translate([0,0,-1.5]) {
    cylinder(2, 7, 1, $fn=100);
}
