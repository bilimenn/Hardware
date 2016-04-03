$fn=10;



module patoune(render)
{
	if(render == 1 )
	{
	difference ()
	{
	union()
	{
	difference ()
	{
		union()
		{

			translate ([0,-25,-13.5])		minkowski()
			{
				translate ([0,1,1]) rotate([0,90,0]) cylinder (r=1, h=26.5);
				translate ([0,1,1])cube ([26.5,46,23]);
			}
			translate ([72 , 0,-7.5]) rotate([0,90,0]) cylinder (r=5, h=22);
			translate ([94 , 0,-7.5]) rotate([0,90,0]) cylinder (r1=5,r2=4,h=2);
			union()
			{
				hull()
				{
					translate ([50,-25,-13.5])		minkowski()
					{
						translate ([0,1,1]) rotate([0,90,0]) cylinder (r=1, h=1.5);
						translate ([0,1,1])cube ([1.5,46,23]);
					}
					translate ([72 , 0,-7.5]) rotate([0,90,0]) cylinder (r=5, h=1);
				}
			}
		}

		union()
		{
				translate ([3,-21,-13.5])	cube ([50,42,24]);
				translate ([0 , 0,8]) Viss2M() ;
				translate ([0 , 8,8]) Viss2M() ;
				translate ([0 , -8,8]) Viss2M() ;
				translate ([0 , 16,8]) Viss2M() ;
				translate ([0 , 8, -8]) Viss2M() ;
				translate ([0 , -8,-8]) Viss2M() ;
				translate ([0 , 8,0]) Viss2M() ;
				translate ([0 , -8,0]) Viss2M() ;

				translate ([0 , -16,8]) Viss2M() ;
				translate ([0 , 16,-8]) Viss2M() ;
				translate ([0 , -16,-8]) Viss2M() ;

				translate ([-1,-25,-5]) cube ([5,11,10]);
				translate ([-1, 14,-5]) cube ([5,11,10]);
		
				//translate ([25,-21,-10.5]) cube ([25,42,25]);
				translate ([64,-2.5,-4]) cube ([33,5,2]);
				hull()
				{
					translate ([52,-20,-10]) cube ([3,40,20]);
					translate ([67 , 0,-9]) rotate([0,90,0]) cylinder (r=3, h=1);
				}
		}
	}
		union()
		{
			translate ([7 , -17,+4.6]) cylinder (r=2.5, h=7.9);
			translate ([7 , +17,+4.6]) cylinder (r=2.5, h=7.9);
			translate ([49 , -17,+4.6]) cylinder (r=2.5, h=7.9);
			translate ([49 , +17,+4.6]) cylinder (r=2.5, h=7.9);
			translate ([53,-13.5,-1.3]) cube ([2,27,11.8]);

		}

	}
		union()
		{
			translate ([25.5,-5.5,10]) cube ([26,11,6.5]);
			translate ([55,-13.5,-1.3]) cube ([20,27,10.8]);
			translate ([52,-11.4,7.4]) rotate([0,90,0]) cylinder (r=1.2, h=4);
			translate ([52,+11.4,0.8]) rotate([0,90,0]) cylinder (r=1.2, h=4);
			translate ([52,-13.6,-1.4]) cube ([4,12,3]);
			translate ([7 , -17,+4.5]) cylinder (r=1.05, h=9);
			translate ([7 , +17,+4.5]) cylinder (r=1.05, h=9);
			translate ([49 , -17,+4.5]) cylinder (r=1.05, h=9);
			translate ([49 , +17,+4.5]) cylinder (r=1.05, h=9);

		}
	}
	}
	else
	{
		translate ([0,-25,-13.5])cube ([50,46,23]);
		translate ([50 , 0,-7.5]) rotate([0,90,0]) cylinder (r=5, h=44);
	}
}
module Viss2M()
{
	translate ([-1 , 0,0]) rotate([0,90,0]) cylinder (r=1.05, h=7);
	translate ([1.5 , 0,0]) rotate([0,90,0]) cylinder (r=2.2, h=7,$fn=8);
}

patoune(1);