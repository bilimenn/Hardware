module ax12(render)
{
	if( render == 1 )
	{
		color("grey") import("Dynamixel/ax12.stl");
	}
	else
	{
		color("grey") translate ([-13.5,-50+11.5,-16]) cube([27,50,32]);
	}
}

module f3(render)
{
	if( render == 1 )
	{
		color("white")  import("Dynamixel/f3.stl");
	}
	else
	{
		color("white")  translate ([-12.5,0,-19]) cube([25,9,38]);
	}
}

module f2(render)
{
	if( render == 1 )
	{
		color("white")  import("Dynamixel/f2.stl");
	}
	else
	{
		color("white")  translate ([-24,-12.5,-8]) cube([48,25,34]);
	}
}
