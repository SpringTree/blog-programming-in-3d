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