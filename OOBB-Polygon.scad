//============================================================
// OpenSCAD
// Regular Convex Polygon Library
// Last Modified : 2015/10/28
// Source: https://www.thingiverse.com/thing:335968
//============================================================
/*

	Definition

	N = Number of Side N >=3
	A = apothem
		radius of inside circle
	R = circumradius
		Radius of outside circle
	S = Side
		Lenght of a side

	Build polygon with the Apothem :
	N and A is known
	Need to calculate S then R
	use $fn

	Build Polygon with Circumradius
	N and R known
	use $fn

	Build Polygon with Side
	N and S Known
	Need to calculate R and optionaly A
	use $fn	

	TO DO
    Control result

	For more information :
	http://en.wikipedia.org/wiki/Regular_polygon

*/

//------------------------------------------------------------
//
//------------------------------------------------------------
//Demo();

//------------------------------------------------------------
// Demo
//------------------------------------------------------------
module Demo()
{
	inch = 25.4;	// 25.4mm
	// A = apothem - it's a RADIUS !
	// For a bolt of 4 inches spécify A=2*inch
	Polygon(N=6,A=2*inch,h=0);	// 4 inches radius Polygon
	//Polygon(N=7,A=49.8365,h=0);
	//Trigon(A=50,h=10);			// N=3
	//Dodecagon(A=50,h=0);			// N=12

    //rotate([0,0,360/7/2])
	//Nonagon(R=55.3144,h=10,debug=true);

	//Polygon(N=6,A=60,h=0,debug=false);
	//Polygon(N=6,A=60,h=5,debug=true);

    //Enneagon(A=50);
}


//------------------------------------------------------------
// Polygon : 
//------------------------------------------------------------
module Polygon(N=3,A=0,R=0,S=0,h=0,debug=false)
{
	N = ( N < 3 ? 3 : N );

	angle = 360/N;
	angleA = angle/2;

	if (debug)
	{
		echo("N = ", N);
		echo("A = ", A);
		echo("S = ", S);
		echo("R = ", R);
	}

	if ( A > 0 )		// if A assign R and S
	{
        S = 2 * A * tan(angleA);							// assign
		//R = (S/2) / sin(angleA);						// no assign ???
		R = ( A * tan(angleA) ) / sin(angleA);		// asign
		_Build_Polygon(N=N,R=R,h=h);
		if (debug)
		{
			echo("aN = ", N);
			echo("aA = ", A);
			echo("aS = ", S);
			echo("aR = ", R);
			#cylinder(r=A,h=h+1,center=true,$fn=150);
			%cylinder(r=R,h=h+1,center=true,$fn=150);
		}
	}
	else
	{
		if ( S > 0 )		// if S assign R and A
		{
			R = (S/2) / sin(angleA);			// assign
			A = S / ( 2 * tan(angleA) );		// assign
            _Build_Polygon(N=N,R=R,h=h);
			if (debug)
			{
				echo("sN = ", N);
				echo("sA = ", A);
				echo("sS = ", S);
				echo("sR = ", R);
				#cylinder(r=A,h=h+1,center=true,$fn=150);
				%cylinder(r=R,h=h+1,center=true,$fn=150);
			}
		}
		else
		{
			if ( R == 0 )		// default
			{
				S = 2 * R * sin(angleA);			// no assign ???
				A = S / ( 2 * tan(angleA) );		// no assign ???
				_Build_Polygon(N=N,h=h);
				if (debug)
				{
					echo("0N = ", N);
					echo("0A = ", A);
					echo("0S = ", S);
					echo("0R = ", R);
					#cylinder(r=A,h=h+1,center=true,$fn=150);
					%cylinder(r=R,h=h+1,center=true,$fn=150);
				}
			}
			else		// build with R
			{
				S = 2 * R * sin(angleA);
				A = S / ( 2 * tan(angleA) );			// no assign ???
				//A = R * ( sin(angleA) / tan(angleA) )	// no assign ???
				_Build_Polygon(N=N,R=R,h=h);
				if (debug)
				{
					echo("rN = ", N);
					echo("rA = ", A);
					echo("rS = ", S);
					echo("rR = ", R);
					%cylinder(r=R,h=h+1,center=true,$fn=150);
				}
			}
		}
	}

	if (debug)
	{
		echo("fN = ", N);
		echo("fA = ", A);
		echo("fS = ", S);
		echo("fR = ", R);
	}
}

//------------------------------------------------------------
// Build
//------------------------------------------------------------
module _Build_Polygon(N=3,R=1,h=0)
{
	if (h > 0)
	{
		// 3D primitive h>0
		cylinder(r=R,h=h,$fn=N,center=true);
	}
	else
	{
		// 2D primitive h=0
		circle(r=R,$fn=N,center=true);
	}
}

//------------------------------------------------------------
// Building lots from N=3, N=N+1
// http://en.wikipedia.org/wiki/Polygon
//------------------------------------------------------------

// 3 sides
module Trigon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=3,A=A,R=R,S=S,h=h,debug=debug);}

module Triangle(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=3,A=A,R=R,S=S,h=h,debug=debug);}

// 4 sides
module Tetragon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=4,A=A,R=R,S=S,h=h,debug=debug);}

module Quadrilateral(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=4,A=A,R=R,S=S,h=h,debug=debug);}

module Quadrangle(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=4,A=A,R=R,S=S,h=h,debug=debug);}

// 5 sides
module Pentagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=5,A=A,R=R,S=S,h=h,debug=debug);}

// 6 sides
module Hexagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=6,A=A,R=R,S=S,h=h,debug=debug);}

// 7 sides
module Heptagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=7,A=A,R=R,S=S,h=h,debug=debug);}

// 8 sides
module Octagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=8,A=A,R=R,S=S,h=h,debug=debug);}

// 9 sides
module Enneagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=9,A=A,R=R,S=S,h=h,debug=debug);}

module Nonagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=9,A=A,R=R,S=S,h=h,debug=debug);}

// 10 sides
module Decagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=10,A=A,R=R,S=S,h=h,debug=debug);}

// 11 sides
module Handecagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=11,A=A,R=R,S=S,h=h,debug=debug);}

// 12 sides
module Dodecagon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=12,A=A,R=R,S=S,h=h,debug=debug);}

// ...

// 100 sides
module Hectogon(A=0,R=0,S=0,h=0,debug=false)
	{Polygon(N=100,A=A,R=R,S=S,h=h,debug=debug);}

//==EOF=======================================================