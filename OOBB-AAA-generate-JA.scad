module JA(width,height,depth){
    difference(){
        union(){
            oi("oobbBase",x=-1.5,width=width,height=height,depth=depth);
            oi("oobbBase",x=1.5,width=width,height=height,depth=depth);
            oi("cube",width=(width * gv("OS")),height = 14.5, depth=depth,y=-6.25 - ((height-1) * gv("OS"))/2);
            
        }
        oi("oobbHoles",width=width,height=height);
        for(i = [1:width]){
                x = -(width*gv("OS")/2)+gv("OS")/2 + (i-1)*gv("OS"); 
                oi("nutM6SlideThrough",x=x,y=-10.5-(height-1)*gv("OS")/2,z=0);
                oi("holeM6",y=-13.5-(height-1)*gv("OS")/2,x=x,z=-depth/2,depth=9,rotX=90);
            }
    }
}