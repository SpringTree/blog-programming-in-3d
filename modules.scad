module cube_frame(width, depth, height, frameThickness = 1) {
    difference() {
        cube([width, depth, height]);
        color("red") {
            translate([frameThickness, -frameThickness, frameThickness]) {
                cube([width - (2*frameThickness), depth + (2*frameThickness), height - (2*frameThickness)]);
            }
            translate([-frameThickness, frameThickness, frameThickness]) {
                cube([width + (2*frameThickness), depth - (2*frameThickness), height - (2*frameThickness)]);
            }
            translate([frameThickness, frameThickness, -frameThickness]) {
                cube([width - (2*frameThickness), depth - (2*frameThickness), height + (2*frameThickness)]);
            }
        }
    }
}

translate([0,0,0]) {
    cube_frame(10, 10, 10, 1);
}

translate([15,0,0]) {
    cube_frame(8, 8, 8, 3);
}

translate([25,0,0]) {
    cube_frame(5, 10, 5, 1);
}

translate([35,0,0]) {
    cube_frame(5, 5, 20, 2);
}
