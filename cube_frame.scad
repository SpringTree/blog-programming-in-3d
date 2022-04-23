module cube_frame(width, depth, height, frameThickness = 1) {
    offset = 2*frameThickness;
    difference() {
        cube([width, depth, height]);
        color("red") {
            translate([frameThickness, -frameThickness, frameThickness]) {
                cube([width - offset, depth + offset, height - offset]);
            }
            translate([-frameThickness, frameThickness, frameThickness]) {
                cube([width + offset, depth - offset, height - offset]);
            }
            translate([frameThickness, frameThickness, -frameThickness]) {
                cube([width - offset, depth - offset, height + offset]);
            }
        }
    }
}