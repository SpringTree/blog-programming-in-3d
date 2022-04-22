// Cubes with other cubes sticking out
// Would look the same as union and intersection
translate([0,0,0]) {
    cube(10);
    color("red") {
        translate([1, -1, 1]) {
            cube([8, 12, 8]);
        }
        translate([-1, 1, 1]) {
            cube([12, 8, 8]);
        }
        translate([1, 1, -1]) {
            cube([8, 8, 12]);
        }
    }
}

// Extract cubes to create a frame
translate([15,0,0]) {
    difference() {
        cube(10);
        color("red") {
            translate([1, -1, 1]) {
                cube([8, 12, 8]);
            }
            translate([-1, 1, 1]) {
                cube([12, 8, 8]);
            }
            translate([1, 1, -1]) {
                cube([8, 8, 12]);
            }
        }
    }
}
