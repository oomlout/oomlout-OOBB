




//OOBBwidth = 3;
//OOBBheight = 2;


drawOOBBPlate(OOBBwidth,OOBBheight);


module drawOOBBPlate(width,height){
	echo("Making OOBB Plate Width: ", width,"height: ", height);


difference(){
	
	linear_extrude(height = 3){
		translate([((width*20)-7)/2,((height*20) - 7)/2]){
			roundedRectangleOOBB((width*20)-7,(height*20) - 7,5);
			}
		}
	

	translate([0,0,-1.5]){
		for(w = [0:(width-1)]){
				for(h = [0:(height-1)]){
						linear_extrude(height = 6){

								drawOOBBHole(6.5+(w * 20),6.5+(h * 20));
								

								if(w != width -1){										drawOOBBRectangleWidth(w,h);					
								}	
								if(h != height -1){
									drawOOBBRectangleHeight(w,h);	
								}
		
						}
					}
				}	
		}
	} //end difference
}


module drawOOBBRectangleWidth(w,h){
			translate([13.5 + (w*20),5 + (h*20)]){
				square([6,3]);
			}
}

module drawOOBBRectangleHeight(w,h){
				translate([5 + (w*20) ,13.5 + (h*20)]){
				square([3,6]);
			}

}

module drawOOBBHole(x,y){
	translate([x,y]){
		circle(r = 3);
		translate([-1.5,-3]){
			square([3,6]);
		}
		translate([-3,-1.5]){
			square([6,3]);
		}
	}
}


module roundedRectangleOOBB(x1,y1,r1){
//Taken from
//http://www.thingiverse.com/thing:9347
x = x1-r1;
y = y1-r1;
radius = r1;

//echo("     Rounded Rectangle Width;",x," Height: ", y, "Radius: ", radius);

hull()
{
    // place 4 circles in the corners, with the given radius
    translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);
}

}