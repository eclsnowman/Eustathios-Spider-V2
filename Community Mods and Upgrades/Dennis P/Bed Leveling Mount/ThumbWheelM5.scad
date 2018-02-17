$fn=80;
// radius of thumbwheel
rw=18.5;
// hight of thumbwheeel
hw=3;

//size of nut
rm4_ac=8.2/2/cos(360/12)-0.1;
// height of the nut
hm4=5;
// hole for the screw to go through without toughing
rm4free=5.25/2;
// hight of nut trapp 90% of nut height
h1=hm4*.9;
// outer radius of nut trapp
r1=rm4_ac+1.5;

//scale in or out
scale_type=2; //1=out 2=in

//height of scale
hs=.8;
//width of scale
ws=.6;
// number of major ticks
nm=4;
// small number for overlapp
e=0.01;
e2=1.4;
echo(hw+h1);

grip=30;
grip_gap=2;
grip_depth=0.8;
grip_angle=45;

module Grip() {
    rotate([grip_angle,0,0]) cube([1,grip_gap,hw*2],center=true); 
    rotate([-grip_angle,0,0]) cube([1,grip_gap,hw*2],center=true); 
}
module Grip2() {
    for (angle=[-grip_angle,grip_angle]) {
    hull(){
    rotate([angle,0,0]) cube([grip_depth*2,0.1,hw*2],center=true); 
    rotate([angle,0,0]) translate([1,0,0]) cube([1,grip_gap,hw*2],center=true); 
    }
}
}

module Scale() {
	for(i=[0:nm-1])
		rotate(360/nm*i)
			translate([r1,-ws/2,hw+1.5])cube([(rw-r1)-1,ws,hs]);
	for(i=[0:nm*2-1])
		rotate(360/nm/2*i)
			translate([r1+1+((rw-r1)-2)/2+1,-ws/2,hw+1.5])cube([((rw-r1)-2)/4,ws,hs]);
	for(i=[0:nm*10-1])
		rotate(360/nm/10*i)
			translate([r1+1+((rw-r1)-2)/4*3,-ws/2,hw+1.5])cube([((rw-r1)-2)/4,ws,hs]);
    
    	for(i=[0:nm-1])
		rotate(360/nm*(i+0.5)) {
           translate([r1+4.25,0,hw+1.5]) rotate([0,0,90]) linear_extrude(height = hs) text(text = str(i*2),font="Swis721 BT:style=Bold", size=5, halign="center", valign="center");
//            translate([r1+3.5, 0, hw+1.5]) rotate([0,0,90]) linear_extrude(height = hs) text(text = "\u2191  \u2191" ,size=5.75, halign="center", valign="center");
//            translate([r1+4.25, 0, hw+1.5]) rotate([0,0,90]) linear_extrude(height = hs) text(text = " -     +" ,size=5, halign="center", valign="center");
//           translate([r1+0.5+((rw-r1)-2)/2,-6.3, hw+1.5]) rotate([0,0,90]) linear_extrude(height = hs) text(text = "-   +" , font="Swis721 BT:style=Bold", size=5, halign="center", valign="center");
//    
//    translate([0,0,0]) rotate([0,0,0]) text("+\u2191 -\u2193", size=5, halign="center", valign="center" );  

            
        }
	
    }
    
module ThumbWheelM5(){
	//color("lime")
	difference(){
		union(){
			cylinder(hw,rw,rw,$fn=nm*30);
			translate([0,0,hw-e-e2])cylinder(h1+e,r1+2,r1);
            translate ([0,0,-1.5]) cylinder (h=1.5,r1=rw-1.5,r2=rw,$fn=64);
            translate ([0,0,hw])cylinder(h=1.5,r1=rw,r2=rw-1.5,$fn=64);
 		}
		translate([0,0,hm4-1.3])cylinder(hw+h1+2,rm4free,rm4free,$fn=24);
		translate([0,0,-1.5])cylinder(hm4,rm4_ac,rm4_ac,$fn=6);
//		translate([0,0,hw-e2])cylinder(hm4,rm4_ac,rm4_ac,$fn=6);

 
        for (i=[0:grip]) {
            rotate([0,0,360/grip*i]) translate([rw+0.5-grip_depth,0,hw/2]) Grip2(); 
        }
	if(scale_type==2) {
       translate([0,0,-hs+0.02]) Scale();
    }
        }
        if(scale_type==1) {
            color("black"){
	Scale();
            }
        }
}

translate([0,0,-16.4]) rotate([0,0,45]) ThumbWheelM5();
