
$fn=80;
// ID of spring keeper
id=0.55*25.4;
//wall thickness
tw=2;
// height of springkeep
hw=4;
//base of spring kepper
tb=1.5;
// hole for the screw to go through
rm4free=5.25/2;
//size of nut
rm4_ac=8.2/2/cos(360/12)-0.1;
// height of the nut
hm4=5.5;

	difference(){
	cylinder($fn=90,h=hw+tb+hm4,r=id/2+tw,center=false);
    translate([0,0,hm4])  cylinder($fn=90, h=hw+hm4, r=id/2, center=false);
//    translate ([0,0,0]) cylinder($fn=90, h=hw+tb+hm4, r1=rm4free, center=false);
	translate([0,0,0]) cylinder(hm4,rm4_ac,rm4_ac,$fn=6);
}
