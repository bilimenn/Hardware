use <paw3.scad>
use <../Dynamixel/dynamixel.scad>
$fn=100;

module leg_pied(angle,render)
{
	rotate([0,angle,0 ]) union()
	{
		color("white")rotate([90, 0, 90]) f2(render);
		translate ([26,0,00]) patoune(render);	
	}
}

module leg_seg1(angle,render)
{
	rotate([0,angle ,0 ])union()
	{
		rotate([-0, 90, 90]) ax12(render);
		translate ([+41.5,0,00]) rotate([0,90,90])	union()
		{
			rotate([0,0 , 0])  f3(render);
			rotate([0,0 , 180]) f3(render);
		}
		translate ([+83,0,00]) rotate([180, 90, 90])ax12(render);
	}
}

module epaule(angle,render)
{
	rotate([0,0 ,angle ]) union()
	{
		rotate([ 0 , 90 , 0]) f2(render);
		translate ([52,0,00]) rotate([ 90 ,  0 , -90])  f2(render);	
	}
	translate ([+0,0,00]) rotate([00, 00, -90])ax12(render);
}

module leg(beta,alpha1 , alpha2 , render )
{
	epaule(beta,render);

	translate ([+52*cos(beta),52*sin(beta),0]) rotate([0,0 ,beta ]) union()
	{
     leg_seg1(alpha1,render);
		translate ([83*cos(alpha1),0,-83*sin(alpha1)]) rotate([0,alpha1,0 ]) leg_pied(alpha2,render);
	}

} 
	leg(80*$t,60*$t,60*$t,1);
	//translate ([120,-240,0]) leg(0,30,60);
	//translate ([0,0,0]) leg(0,30,60*$t);
	//translate ([120,240,0]) leg(0,30,60);
	//rotate([00, 00, -180]) 	translate ([120,-240,0]) leg(0,30,60*$t);
	//rotate([00, 00, -180]) translate ([120,0,0]) leg(0,30,60);
	//rotate([00, 00, -180]) 	translate ([120,240,0]) leg(0,30,60*$t);

