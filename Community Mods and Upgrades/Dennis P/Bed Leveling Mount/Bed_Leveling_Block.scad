// Eustahios version 2 Bed Leveling Block 
// remixed to include annotation 
//
// Uncommnet the line below to include the Thumbwheel
//include <ThumbwheelM5.scad>;
// 
// variables to control text placement
et=9.25;
//depth of text
dt=0.8;
//
difference () {
// MAIN BODY
   translate([-.75,0,0]) cube (size=[21.5,40,20], center = true);
// M5 CAP SCREW ANCHORS
    translate([5.5, 11,0]) rotate([0,90,0]) cylinder ($fn=90, h=5.5, r1=9.75/2, r2=9.75/2, center=false);
    translate([5.5,-11,0]) rotate([0,90,0]) cylinder ($fn=90, h=5.5, r1=9.75/2, r2=9.75/2, center=false);
    translate([-12.5,-11,0]) rotate([0,90,0]) cylinder ($fn=90, h=20, r1=5.05/2, r2=5.05/2, center=false);
    translate([-12.5, 11,0]) rotate([0,90,0]) cylinder ($fn=90, h=20, r1=5.05/2, r2=5.05/2, center=false);
// SPRING CORE HOLE
    translate([0,0,-10]) rotate([0,0,0]) cylinder ($fn=90, h=20, r1=5.05/2, r2=5.05/2, center=FALSE);
    translate([0,0,6]) rotate([0,0,0]) cylinder ($fn=90, h=11, r1=12.6/2, r2=12.55/2, center=false);
//BROAD FACE TEXT
    translate([et, 0,-5.7]) rotate([90,0,90]) linear_extrude(height = dt) text(text = "|" ,size=5.75, halign="center", valign="center");
    translate([et, -14,-6.7]) rotate([90,0,90]) linear_extrude(height = dt) text(text = "\u2190" ,size=12, halign="center", valign="center");
     translate([et, 14,-6.7]) rotate([90,0,90]) linear_extrude(height = dt) text(text = "\u2192" ,size=12, halign="center", valign="center");
     translate([et, 4.5,-6.8]) rotate([90,0,90]) linear_extrude(height = dt) text(text = "\u002B" ,size=8, halign="center", valign="center");
     translate([et, -4.5,-7.6]) rotate([90,0,90]) linear_extrude(height = dt) text(text = "\u002D" ,size=8, halign="center", valign="center");
    translate([et, 0,7.3]) rotate([90,0,90]) linear_extrude(height = dt) text(text = "NOZZLE / BED" ,size=4, halign="center", valign="center");
    translate([et, 0,1.75]) rotate([90,0,90]) linear_extrude(height = dt) text(text = "GAP" ,size=4, halign="center", valign="center");
//  This is sized for narrow 5.25mm slots, a la 8020.net extrusions    
//    translate([-11.5,-20, 5.5/2]) cube (size=[1.5,40,7.25], center=false);
//    translate([-11.5,-20, -10]) cube (size=[1.5,40,7.25], center=false);
//  This is sized for 6mm slots    
    translate([-11.5,-20, 6/2]) cube (size=[1.5,40,7], center=false);
    translate([-11.5,-20, -10]) cube (size=[1.5,40,7], center=false);
//
//RIGHT END TEXT 
//    translate([3, 20-.8,-7.5]) rotate([90,0,180]) linear_extrude(height = 0.8) text(text = "\u2194" ,size=5.75, halign="center", valign="center");
// translate([10, 20-.8,-7.5]) rotate([90,0,180]) linear_extrude(height = 0.8) text(text = "-    +" ,size=5.75, halign="LEFT", valign="center");
//    translate([11, 20-.8,3.5]) rotate([90,0,180]) linear_extrude(height = 0.8) text(text = "NOZZLE" ,size=4, halign="LEFT", valign="center");
//    translate([11, 20-.8,-2.5]) rotate([90,0,180]) linear_extrude(height = 0.8) text(text = "BED GAP" ,size=4, halign="LEFT", valign="center");
//
// LEFT END TEXT
//    translate([-12.5, -20+.8,3.5]) rotate([90,0,0]) linear_extrude(height = 0.8) text(text = "NOZZLE" ,size=4, halign="LEFT", valign="center");
//    translate([-12.5, -20+.8,-2.5]) rotate([90,0,0]) linear_extrude(height = 0.8) text(text = "BED GAP" ,size=4, halign="LEFT", valign="center");
//        translate([2, -20+.8,-7.5]) rotate([90,0,0]) linear_extrude(height = 0.8) text(text = "\u2194" ,size=5.75, halign="center", valign="center");
//    translate([-5, -20+.8,-7.5]) rotate([90,0,0]) linear_extrude(height = 0.8) text(text = "-    +" ,size=5.75, halign="LEFT", valign="center");
}
// translate([0, 0,-20]) rotate([0,0,0]) ThumbwheelM5();
