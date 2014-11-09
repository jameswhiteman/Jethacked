//Argument0 caster id
//argument1 relative x point to rotate around (relative to the xpos of the caster)
//argument2 relative y point to rotate around
//argument3 roatate amount
var i;
for (i = 0; i < global._lsys_caster_points[argument0]; i += 1)
{
    /*lsys_caster_set_point(argument0, i, lengthdir_x(global._lsys_caster_point_first_x[argument0, i] / global._lsys_quality - argument1 , argument3) - lengthdir_y(global._lsys_caster_point_first_y[argument0, i] / global._lsys_quality - argument2, argument3) + argument1,
    lengthdir_y(global._lsys_caster_point_first_x[argument0, i] / global._lsys_quality - argument1, argument3) + lengthdir_x(global._lsys_caster_point_first_y[argument0, i] / global._lsys_quality - argument2, argument3) + argument2)*/
    global._lsys_caster_point_x[argument0, i] = ( lengthdir_x(global._lsys_caster_point_first_x[argument0, i] / global._lsys_quality - argument1 , argument3) - lengthdir_y(global._lsys_caster_point_first_y[argument0, i] / global._lsys_quality - argument2, argument3) + argument1 ) * global._lsys_quality;
    global._lsys_caster_point_y[argument0, i] = ( lengthdir_y(global._lsys_caster_point_first_x[argument0, i] / global._lsys_quality - argument1, argument3) + lengthdir_x(global._lsys_caster_point_first_y[argument0, i] / global._lsys_quality - argument2, argument3) + argument2 ) * global._lsys_quality;
}