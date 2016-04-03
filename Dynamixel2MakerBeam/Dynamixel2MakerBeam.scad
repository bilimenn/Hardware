$fn=50;
module MB_to_dyna( render )
{
	if (render == 1 )
	{
	rotate([0, 90, 0])
	difference ()
	{ 
		
		union ()
		{
			translate ([0,-19,-41]) cube ([4,38,41]);
			translate ([1,-30,-27.5]) cube ([3,60,10]);
			translate ([4,-20,-24]) cube ([3,40,3]);
			translate ([1, -5,-51]) cube ([3,10,51]);
			translate ([4,-1.5,-41]) cube ([3,3,41]);
			translate ([-3,-19,-38.5]) cube ([3,3,35]);
			translate ([-3,16,-38.5]) cube ([3,3,35]);
			translate ([-3,-19,-41]) cube ([3,38,2.5]);
			translate ([1, 0,0]) rotate([0,90,0]) cylinder (r=16, h=2);
		
		}
		union ()
		{
			//translate ([ 2, 0,0]) rotate([0,90,0]) cylinder (r=13, h=2);
			translate ([-1, 0,0]) rotate([0,90,0]) cylinder (r=11.25, h=7);
			minkowski ()
			{
				translate ([-1,-8,-31]) cube ([4.5,16,30]);
				rotate([0,90,0]) cylinder (r=2, h=7);
			}
			translate ([-1 , -13.5, -6.5]) rotate([0,90,0]) cylinder (r=1.05, h=7 );
			translate ([1.5, -13.5, -6.5]) rotate([0,90,0]) cylinder (r=2, h=7);
			translate ([-1 , -13.5,-14.5]) rotate([0,90,0]) cylinder (r=1.05, h=7);
			translate ([1.5, -13.5,-14.5]) rotate([0,90,0]) cylinder (r=2, h=7);
			translate ([-1 , -13.5,-30.5]) rotate([0,90,0]) cylinder (r=1.05, h=7);
			translate ([1.5, -13.5,-30.5]) rotate([0,90,0]) cylinder (r=2, h=7);
			translate ([-1 ,  -8  ,-36]) rotate([0,90,0]) cylinder (r=1.05, h=7);
			translate ([1.5,  -8  ,-36]) rotate([0,90,0]) cylinder (r=2, h=7);

			translate ([-1 , 13.5,-6.5]) rotate([0,90,0]) cylinder (r=1.05, h=7);
			translate ([1.5, 13.5,-6.5]) rotate([0,90,0]) cylinder (r=2, h=7);
			translate ([-1 , 13.5,-14.5]) rotate([0,90,0]) cylinder (r=1.05, h=7);
			translate ([1.5, 13.5,-14.5]) rotate([0,90,0]) cylinder (r=2, h=7);
			translate ([-1 , 13.5,-30.5]) rotate([0,90,0]) cylinder (r=1.05, h=7);
			translate ([1.5, 13.5,-30.5]) rotate([0,90,0]) cylinder (r=2, h=7);
			translate ([-1 ,  8  ,-36]) rotate([0,90,0]) cylinder (r=1.05, h=7);
			translate ([1.5,  8  ,-36]) rotate([0,90,0]) cylinder (r=2, h=7);

			translate ([-1 , 25,-22.5]) rotate([0,90,0]) cylinder (r=1.6, h=7);
			translate ([-1 , -25,-22.5]) rotate([0,90,0]) cylinder (r=1.6, h=7);
			translate ([-1 , 0 ,-46]) rotate([0,90,0]) cylinder (r=1.6, h=7);
		}
	}
	}
	else
	{
		translate ([-41,-19,-4]) cube ([41,38,4]);
	}
}

MB_to_dyna(1);
MB_to_dyna(0);
