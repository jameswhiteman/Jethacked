//argument0: source surface
//argument1: blur amount
//argument2: step amount, normally 1
var i,k;
surface_set_target(argument0);
for(i=1;i<argument1;i+=1){
    k = 1-(i/argument1)  
    draw_surface_ext(argument0,i+argument2,0,1,1,0,c_white,k);
    draw_surface_ext(argument0,-i-argument2,0,1,1,0,c_white,k);
    }
for(i=1;i<argument1;i+=1){
    k = 1-(i/argument1);
    draw_surface_ext(argument0,0,i+argument2,1,1,0,c_white,k);
    draw_surface_ext(argument0,0,-i-argument2,1,1,0,c_white,k);
    }    
surface_reset_target();
return (argument0);